<?php

require( "config.php" );
$action = isset( $_GET['action'] ) ? $_GET['action'] : "";//if there is an action, get all action files from 

switch ( $action ) {
  case 'archive'://get all article
    archive();
    break;
  case 'viewArticle'://view articles
    viewArticle();
    break;
  case 'sortimentlista'://
    sortimentlista();
    break;
  case 'viewsortiment':
    viewsortiment();
    break;
  case 'allsortiment':
    allsortiment();
    break;	
  default:
    homepage();
}

function archive() {
  $results = array();
  $categoryId = ( isset( $_GET['categoryId'] ) && $_GET['categoryId'] ) ? (int)$_GET['categoryId'] : null;
  $results['category'] = Category::getById( $categoryId );
  $data = Article::getList( 100000, $results['category'] ? $results['category']->id : null );
  $results['articles'] = $data['results'];
  $results['totalRows'] = $data['totalRows'];
  $data = Category::getList();
  $results['categories'] = array();
  foreach ( $data['results'] as $category ) $results['categories'][$category->id] = $category;
  $results['pageHeading'] = $results['category'] ?  $results['category']->name : "Article Archive";
  $results['pageTitle'] = $results['pageHeading'] . " | SystemBolaget";
  require( TEMPLATE_PATH . "/archive.php" );
}

function viewArticle() {
  if ( !isset($_GET["articleId"]) || !$_GET["articleId"] ) {
    homepage();
    return;
  }

  $results = array();
  $results['article'] = Article::getById( (int)$_GET["articleId"] );
  $results['category'] = Category::getById( $results['article']->categoryId );
  $results['pageTitle'] = $results['article']->title . " | SystemBolaget";
  require( TEMPLATE_PATH . "/viewArticle.php" );
}

function homepage() {
  $results = array();
  $data = Article::getList( HOMEPAGE_NUM_ARTICLES );
  $results['articles'] = $data['results'];
  $results['totalRows'] = $data['totalRows'];
  $data = Category::getList();
  $results['categories'] = array();
  foreach ( $data['results'] as $category ) $results['categories'][$category->id] = $category; 
  $results['pageTitle'] = "SystemBolaget";
  require( TEMPLATE_PATH . "/homepage.php" );
}
/**Sortiment**/
function allsortiment() {
  $results = array();
  $data = Sortiment::getList( 100000 );
  $results['Sortiments'] = $data['results'];
  $results['totalRows'] = $data['totalRows'];
  $results['pageTitle'] = $results['pageHeading'] . " | SystemBolaget";
  require( TEMPLATE_PATH . "/allsortiment.php" );
}

function viewsortiment() {
  if ( !isset($_GET["SortimentId"]) || !$_GET["SortimentId"] ) {
    sortimentlista();
    return;
  }

  $results = array();
  $results['Sortiment'] = Sortiment::getById( (int)$_GET["SortimentId"] );
  $results['pageTitle'] = $results['Sortiment']->Namn . " | SystemBolaget";
  require( TEMPLATE_PATH . "/viewsortiment.php" );
}

function sortimentlista() {
  $results = array();
  $data = Sortiment::getList( SORTIMENT_NUM_SORTIMENTS );
  $results['Sortiments'] = $data['results'];
  $results['totalRows'] = $data['totalRows'];
  $results['pageTitle'] = "SystemBolaget";
  require( TEMPLATE_PATH . "/sortimentlista.php" );
}

?>
