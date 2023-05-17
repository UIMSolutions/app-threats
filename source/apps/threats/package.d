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
  import apps.tht.controllers;
  import apps.tht.helpers;
  import apps.tht.tests;
  import apps.tht.views;
}

DApp threatsApp;
static this() {
  threatsApp = App
    .name("threatsApp")
    .rootPath("/apps/threats")
    .addRoute(Route("", HTTPMethod.GET, THTIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, THTIndexPageController));
}

