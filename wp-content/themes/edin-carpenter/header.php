<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="http://getbootstrap.com/assets/ico/favicon.ico">

  <title>
    <?php 

    wp_title('|', true, 'right');
    bloginfo('name');

    ?>
  </title>


  <!-- TYPOGRAPHY -->
  <link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400|Open+Sans:400italic,400,300,600|Petit+Formal+Script' rel='stylesheet' type='text/css'>

  <?php wp_head(); ?>
</head>

<!-- NAVBAR
  ================================================== -->
<body>
  <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
  <div class="navbar navbar-default" role="navigation">
    <div class="title-bar">
      <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navbar-collapse">
        <div class="sr-only">Toggle navigation</div>
        <div class="icon-bar"></div>
        <div class="icon-bar"></div>
        <div class="icon-bar"></span>
      </button>
      <div class="brand-name">
        <a href="<?php bloginfo('url'); ?>" class="large-title">Edin Carpenter &diam; Makeup Artistry</a>
        <a href="index.html" class="small-title">Edin Carpenter<br>Makeup Artistry</a>
      </div>
    </div>
    <div class="navbar-collapse collapse">
      <?php
        $args = array(
          'theme_location' => 'header-menu',
          'menu_class' => 'nav navbar-nav',
          'container' => 'false'
          );
        wp_nav_menu($args);
       ?>
    </div>
  </div>