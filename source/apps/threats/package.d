/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.threats;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.threats.controllers;
  import apps.threats.helpers;
  import apps.threats.routers;
  import apps.threats.tests;
  import apps.threats.views;
}

DApp threatsApp;
static this() {
  threatsApp = App
    .name("threatsApp")
    .rootPath("/apps/threats")
    .addRoute(Route("", HTTPMethod.GET, THTIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, THTIndexPageController));
}
