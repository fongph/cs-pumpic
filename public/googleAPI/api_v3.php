<?php

ini_set('display_errors', 1);
error_reporting(-1);

class HelloAnalyticsApi {

  /** @var apiAnalyticsService $analytics */
  var $analytics;

  /** @var string $error */
  var $error = null;

  /**
   * Constructor.
   * @param apiAnalyticsService The analytics service object to make
   *     requests to the API.
   */
  function __construct(&$anlaytics) {
    $this->analytics = $anlaytics;
  }

  /**
   * Tries to the get users first profile ID then uses that profile id
   * to query the core reporting API. The results from the API are formatted
   * and returned. If any error occurs, $this->error gets set.
   * @return string The formatted API response.
   */
  public function getHtmlOutput() {
    try {
      $profileId = $this->getFirstProfileId();
      if (isset($profileId)) {
        $results = $this->queryCoreReportingApi($profileId);
//        echo "<pre>";
//        var_dump($results);
//        echo "</pre>"; die('stop');
        return $this->getFormattedResults($results);
      }

    } catch (Google_ServiceException $e) {
      // Error from the API.
      $this->error = $e->getMessage();

    } catch (demoException $e) {
      // Error running this demo.
      $this->error = $e->getMessage();
    }
    return '';
  }

  /**
   * Returns the users first profile ID by traversing the Management API. If
   * any of the collections have no items, the traversal stops and an error
   * is throws to halt demo execution.
   * @throws demoException If any of the Management API collections had no
   *     items.
   * @return string The user's first profile ID.
   */
  private function getFirstprofileId() {
    $accounts =
        $this->analytics->management_accounts->listManagementAccounts();

    if (count($accounts->getItems()) > 0) {
      $items = $accounts->getItems();
      $firstAccountId = $items[0]->getId();

      $webproperties = $this->analytics->management_webproperties
          ->listManagementWebproperties($firstAccountId);

      if (count($webproperties->getItems()) > 0) {
        $items = $webproperties->getItems();
        $firstWebpropertyId = $items[0]->getId();

        $profiles = $this->analytics->management_profiles
            ->listManagementProfiles($firstAccountId, $firstWebpropertyId);

        if (count($profiles->getItems()) > 0) {
          $items = $profiles->getItems();
          return $items[0]->getId();

        } else {
          throw new demoException('No profiles found for this user.');
        }
      } else {
        throw new demoException('No webproperties found for this user.');
      }
    } else {
      throw new demoException('No accounts found for this user.');
    }
  }

  /**
   * Queries the Core Reporting API and returns the top 25 organic
   * search terms.
   * @param string $profileId The profileId to use in the query.
   * @return GaData the results from the Core Reporting API.
   */
  private function queryCoreReportingApi($profileId) {
    
    return $this->analytics->data_ga->get(
        'ga:' . $profileId,
        '2015-06-17',
        '2015-06-18',
         "ga:visits,ga:bounces,ga:visitors,ga:newVisits,ga:timeOnSite,ga:entrances,ga:pageviews,ga:timeOnPage,ga:exits",
        array(
        "dimensions" => "ga:source,ga:pagePath,ga:referralPath",
        'sort' => '-ga:visits',
        'segment' => 'gaid::-8',
        // "filters" => "ga:source==".urlencode($referrer)
        )
    );
//        'ga:visitors',
//        array(
//            'dimensions' => 'ga:source,ga:keyword', // ga:source,ga:keyword
//            //'sort' => '-ga:visits,ga:keyword',
//            //'filters' => 'ga:medium==(none)', // organic
//            'max-results' => '1000'));
  }

  /**
   * Formats the results from the Core Reporting API into some nice
   * HTML. The profile name is printed as a header. The results of
   * the query is printed as a table. Note, all the results from the
   * API are html escaped to prevent malicious code from running on the
   * page.
   * @param GaData $results The Results from the Core Reporting API.
   * @return string The nicely formatted results.
   */
  private function getFormattedResults($results) {
    $profileName = $results->getProfileInfo()->getProfileName();
    $output = '<h3>Results for profile: '
        . htmlspecialchars($profileName, ENT_NOQUOTES)
        . '</h3>';

    if (count($results->getRows()) > 0) {
      $table = '<table>';

      // Print headers.
      $table .= '<tr>';

      foreach ($results->getColumnHeaders() as $header) {
        $table .= '<th>' . $header->getName() . '</th>';
      }
      $table .= '</tr>';

      // Print table rows.
      foreach ($results->getRows() as $row) {
        $table .= '<tr>';
          foreach ($row as $cell) {
            $table .= '<td>'
                   . htmlspecialchars($cell, ENT_NOQUOTES)
                   . '</td>';
          }
        $table .= '</tr>';
      }
      $table .= '</table>';

    } else {
      $table = '<p>No results found.</p>';
    }
    return $output . $table;
  }

  /**
   * Returns any errors encountered in this script.
   * @return string The error message.
   */
  public function getError() {
    return $this->error;
  }
}

// Exceptions that the Demo can throw.
class demoException extends Exception {}


function getService()
{
  // Creates and returns the Analytics service object.

  // Load the Google API PHP Client Library.
  require_once '../../includes/lib/google/api_v3/autoload.php';

  // Use the developers console and replace the values with your
  // service account email, and relative location of your key file.
  $service_account_email = '35839110757-7759svhb01lfqel581c83dv0b60apaof@developer.gserviceaccount.com';
  $key_file_location = './Pumpic-8d3b545958ff_1.p12';

  // Create and configure a new client object.
  $client = new Google_Client();
  $client->setApplicationName("test");
  $analytics = new Google_Service_Analytics($client);

  // Read the generated client_secrets.p12 key.
  $key = file_get_contents($key_file_location);
  $cred = new Google_Auth_AssertionCredentials(
      $service_account_email,
      array(Google_Service_Analytics::ANALYTICS_READONLY),
      $key
  );
  $client->setAssertionCredentials($cred);
  if($client->getAuth()->isAccessTokenExpired()) {
    $client->getAuth()->refreshTokenWithAssertion($cred);
  }

  return $analytics;
}

function getFirstprofileId(&$analytics) {
  // Get the user's first view (profile) ID.

  // Get the list of accounts for the authorized user.
  $accounts = $analytics->management_accounts->listManagementAccounts();

  if (count($accounts->getItems()) > 0) {
    $items = $accounts->getItems();
    $firstAccountId = $items[0]->getId();

    // Get the list of properties for the authorized user.
    $properties = $analytics->management_webproperties
        ->listManagementWebproperties($firstAccountId);

    if (count($properties->getItems()) > 0) {
      $items = $properties->getItems();
      $firstPropertyId = $items[0]->getId();

      // Get the list of views (profiles) for the authorized user.
      $profiles = $analytics->management_profiles
          ->listManagementProfiles($firstAccountId, $firstPropertyId);

      if (count($profiles->getItems()) > 0) {
        $items = $profiles->getItems();

        // Return the first view (profile) ID.
        return $items[0]->getId();

      } else {
        throw new Exception('No views (profiles) found for this user.');
      }
    } else {
      throw new Exception('No properties found for this user.');
    }
  } else {
    throw new Exception('No accounts found for this user.');
  }
}

function getResults(&$analytics, $profileId) {
  // Calls the Core Reporting API and queries for the number of sessions
  // for the last seven days.
   return $analytics->data_ga->get(
       'ga:' . $profileId,
       '7daysAgo',
       'today',
       'ga:sessions');
}

function printResults(&$results) {
  // Parses the response from the Core Reporting API and prints
  // the profile name and total sessions.
  if (count($results->getRows()) > 0) {

    // Get the profile name.
    $profileName = $results->getProfileInfo()->getProfileName();

    // Get the entry for the first entry in the first row.
    $rows = $results->getRows();
    $sessions = $rows[0][0];

    // Print the results.
    print "First view (profile) found: $profileName\n";
    print "Total sessions: $sessions\n";
  } else {
    print "No results found.\n";
  }
}

$analytics = getService();

$_helloGA = new HelloAnalyticsApi( $analytics );
echo $_helloGA -> getHtmlOutput(); 
$profile = getFirstProfileId($analytics);
echo "<pre>";
var_dump( $profile );
echo "</pre>";
//printResults(getResults($analytics, $profile));
