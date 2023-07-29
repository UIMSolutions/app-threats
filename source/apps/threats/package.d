/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.threats;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.threats.controllers;
  import apps.threats.helpers;
  import apps.threats.routers;
  import apps.threats.tests;
  import apps.threats.views;
}

static this() {
  auto myApp = App("threatsApp", "apps/threats");

  with (myApp) {
    importTranslations;
    addControllers([
      "threats.index": IndexPageController
    ]);

    addRoutes(
      Route("", HTTPMethod.GET, controller("threats.index")),
      Route("/", HTTPMethod.GET, controller("threats.index"))
    );
  }

  AppRegistry.register("apps.threats", myApp);
}
