import 'package:flutter/material.dart';
import 'widget_files/dc_appbar_basic.dart';
import 'widget_files/dc_appbar_bottom_fab.dart';
import 'widget_files/dc_appbar_search.dart';
import 'widget_files/dc_appbar_slivers.dart';
import 'widget_files/dc_async_futurebuilder.dart';
import 'widget_files/dc_async_streambuilder.dart';
import 'widget_files/dc_basic_button.dart';
import 'widget_files/dc_basic_card_inkwell.dart';
import 'widget_files/dc_basic_icon.dart';
import 'widget_files/dc_basic_image.dart';
import 'widget_files/dc_basic_statefulwidgets.dart';
import 'widget_files/dc_basic_text.dart';
import 'widget_files/dc_basic_textfield.dart';
import 'dc_homepage.dart';
import 'widget_files/dc_layout_container_padding.dart';
import 'widget_files/dc_layout_expanded_sizedbox.dart';
import 'widget_files/dc_layout_fractionallysizedbox.dart';
import 'widget_files/dc_layout_row_column.dart';
import 'widget_files/dc_layout_stack.dart';
import 'widget_files/dc_layout_wrap.dart';
import 'widget_files/dc_lists_datatable.dart';
import 'widget_files/dc_lists_gridlist.dart';
import 'widget_files/dc_lists_listtile_expansiontile.dart';
import 'widget_files/dc_lists_listviewbuilder.dart';
import 'widget_files/dc_lists_reorderable.dart';
import 'widget_files/dc_lists_swipe_dismiss.dart';
import 'widget_files/dc_nav_bottom_navbar.dart';
import 'widget_files/dc_nav_dialog.dart';
import 'widget_files/dc_nav_draggable_scrollable_sheet.dart';
import 'widget_files/dc_nav_drawer.dart';
import 'widget_files/dc_nav_pageselector.dart';
import 'widget_files/dc_nav_route.dart';
import 'widget_files/dc_nav_tabs.dart';

class DCRoutes {
  String widgetName;
  String routeName;
  // ignore: prefer_typing_uninitialized_variables
  final routeClass;
  String widgetDescription;

  DCRoutes(this.widgetName, this.routeName, this.routeClass,
      [this.widgetDescription = '']);
}

final homeR = DCRoutes('', 'home', const DCFlutterPlaygroundHomePage());

final appbarR = DCRoutes('Top AppBar', '/appbar', const DCBasicAppBar());
final appbarBottomR = DCRoutes(
    'Bottom Bar and FAB', '/appbar_bottombarfab', const DCBottomAppBarFAB());
final appbarSliversR =
    DCRoutes('Slivers App Bar', '/appbar_slivers', const DCSliversAppBar());
final appbarSearchR =
    DCRoutes('Search Bar', '/appbar_search', const DCSearchBar());

final basicIconR = DCRoutes(
  'Icon',
  '/basic_icon',
  const DCIcon(),
  'Icon & IconButton',
);
final basicTextR = DCRoutes('Text & Typography', '/basic_text', const DCText());
final basicButtonR = DCRoutes(
    'Button', '/basic_button', const DCButton(), 'Different types of button');
final basicTextFieldR = DCRoutes(
    'TextField', '/basic_textfield', const DCTextField(), 'Text Input Fields');
final basicImageR =
    DCRoutes('Image', '/basic_image', const DCImage(), 'Working with images');
final basicCardInkWellR = DCRoutes(
    'Card & Inkwell',
    '/basic_cardinkwell',
    const DCCardInkwell(),
    'Container with decorations. Inkwell(ripple) Effect');
final basicStatefulWidgetsR = DCRoutes(
    'Other stateful widgets',
    '/basic_statefulwidgets',
    const DCStatefulWidgetsSample(),
    'Switch, checkbox, slider, DropdownButton, MenuButton, etc');

final layoutContainerPaddingR = DCRoutes('Container & Padding',
    '/layout_container_padding', const DCContainerPadding());
final layoutRowColumnR =
    DCRoutes('Row & Column', '/layout_rowcolumn', DCRowColumn());
final layoutWrapR = DCRoutes('Wrap', '/layout_wrap', const DCWrap());
final layoutFractionallySizedBoxR = DCRoutes('FractionallySizedBox',
    '/layout_fractionallysizedbox', const DCFractionallySizedBox());
final layoutExpandedR =
    DCRoutes('Expanded & SizedBox', '/layout_expanded', const DCExpanded());
final layoutStackR = DCRoutes('Stack', '/layout_stack', DCStack());

final listGridListR =
    DCRoutes('GridList', '/list_gridlist', const DCGridList());
final listExpandableR = DCRoutes('ListTile & ExpandableListTile',
    '/list_listtile_expandable', const DCListTileExpansionTile());
final listViewBuilderR = DCRoutes(
    'ListView.builder', '/list_listviewbuilder', const DCListViewBuilder());
final listReorderableR =
    DCRoutes('Reoderable List', '/list_reorderable', const DCReorderableList());
final listSwipeToDismissR = DCRoutes('Swipe to Dismiss', '/list_swipetodismiss',
    const DCSwipeToDismissListTile());
final listDataTableR =
    DCRoutes('Data Table', '/list_datatable', const DCDataTable());

final navTabNavR = DCRoutes('Tabs', '/nav_tab', const DCTabNavigation());
final navDialogR = DCRoutes('Dialogs', '/nav_dialog', const DCDialog());
final navRouteExR = DCRoutes('Routes', '/nav_route', const DCRouteEx());
// final navSecondPageRouteExR =
//     DCRoutes('', '/nav_route_secondpage', const DCSecondRoute());
final navDrawerR =
    DCRoutes('Navigation Drawer', '/nav_drawer', const DCNavigationDrawer());
final navBottomNavbarR = DCRoutes('Bottom Navigation Bar', '/nav_bottom_navbar',
    const DCBottomNavigationBar());
final navPageSelectorR =
    DCRoutes('Page Selector', '/nav_page_selector', const DCPageSelector());
final navDraggableScrollableR = DCRoutes('DraggableScrollableSheet',
    '/nav_draggable_scrollablesheet', const DCDraggableScrollableSheet());

final asyncFutureBuilderR =
    DCRoutes('FutureBuilder', '/async_futurebuilder', const DCFutureBuilder());
final asyncStreamBuilderR = DCRoutes('StreamBuilder & StreamController',
    '/async_streambuilder', const DCStreamBuilder());

List<DCRoutes> dcAppBarRoutes = [
  appbarR,
  appbarBottomR,
  appbarSliversR,
  appbarSearchR
];
List<DCRoutes> dcBasicRoutes = [
  basicIconR,
  basicTextR,
  basicButtonR,
  basicTextFieldR,
  basicImageR,
  basicCardInkWellR,
  basicStatefulWidgetsR
];

List<DCRoutes> dcLayoutRoutes = [
  layoutContainerPaddingR,
  layoutRowColumnR,
  layoutWrapR,
  layoutFractionallySizedBoxR,
  layoutExpandedR,
  layoutStackR
];

List<DCRoutes> dcListWidgetRoutes = [
  listGridListR,
  listExpandableR,
  listViewBuilderR,
  listReorderableR,
  listSwipeToDismissR,
  listDataTableR,
];

List<DCRoutes> dcNavigationWidgetRoutes = [
  navTabNavR,
  navDialogR,
  navRouteExR,
  navDrawerR,
  navBottomNavbarR,
  navPageSelectorR,
  navDraggableScrollableR
];

List<DCRoutes> dcAsyncWidgetRoutes = [asyncFutureBuilderR, asyncStreamBuilderR];

// Building the routes
class WidgetBankRoutes {
  static Map<String, WidgetBuilder> dcRouteBuilder() {
    return <String, WidgetBuilder>{
      homeR.routeName: (context) => homeR.routeClass,
      asyncFutureBuilderR.routeName: (context) =>
          asyncFutureBuilderR.routeClass,
      asyncStreamBuilderR.routeName: (context) =>
          asyncStreamBuilderR.routeClass,
      navBottomNavbarR.routeName: (context) => navBottomNavbarR.routeClass,
      navDialogR.routeName: (context) => navDialogR.routeClass,
      navDrawerR.routeName: (context) => navDrawerR.routeClass,
      navPageSelectorR.routeName: (context) => navPageSelectorR.routeClass,
      navRouteExR.routeName: (context) => navRouteExR.routeClass,
      // navSecondPageRouteExR.routeName: (context) =>
      //     navSecondPageRouteExR.routeClass,
      navTabNavR.routeName: (context) => navTabNavR.routeClass,
      navDraggableScrollableR.routeName: (context) =>
          navDraggableScrollableR.routeClass,
      listDataTableR.routeName: (context) => listDataTableR.routeClass,
      listGridListR.routeName: (context) => listGridListR.routeClass,
      listExpandableR.routeName: (context) => listExpandableR.routeClass,
      listViewBuilderR.routeName: (context) => listViewBuilderR.routeClass,
      listReorderableR.routeName: (context) => listReorderableR.routeClass,
      listSwipeToDismissR.routeName: (context) =>
          listSwipeToDismissR.routeClass,
      layoutContainerPaddingR.routeName: (context) =>
          layoutContainerPaddingR.routeClass,
      layoutRowColumnR.routeName: (context) => layoutRowColumnR.routeClass,
      layoutWrapR.routeName: (context) => layoutWrapR.routeClass,
      layoutFractionallySizedBoxR.routeName: (context) =>
          layoutFractionallySizedBoxR.routeClass,
      layoutExpandedR.routeName: (context) => layoutExpandedR.routeClass,
      layoutStackR.routeName: (context) => layoutStackR.routeClass,
      basicIconR.routeName: (context) => basicIconR.routeClass,
      basicTextR.routeName: (context) => basicTextR.routeClass,
      basicTextFieldR.routeName: (context) => basicTextFieldR.routeClass,
      basicButtonR.routeName: (context) => basicButtonR.routeClass,
      basicImageR.routeName: (context) => basicImageR.routeClass,
      basicCardInkWellR.routeName: (context) => basicCardInkWellR.routeClass,
      basicStatefulWidgetsR.routeName: (context) =>
          basicStatefulWidgetsR.routeClass,
      appbarBottomR.routeName: (context) => appbarBottomR.routeClass,
      appbarSliversR.routeName: (context) => appbarSliversR.routeClass,
      appbarSearchR.routeName: (context) => appbarSearchR.routeClass,
      appbarR.routeName: (context) => appbarR.routeClass
    };
  }
}
