/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.threats.views.index;

import apps.threats;
@safe:

class DTHTIndexView : DView {
  mixin(ViewThis!("THTIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DTHTIndexView~":DTHTIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Myname -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("THTIndexView"));
