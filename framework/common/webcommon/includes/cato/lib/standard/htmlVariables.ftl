<#--
* 
* Master HTML templating variables include, standard Cato markup.
*
* A set of global variables that define common styling classes, part of standard Cato Freemarker API.
* Automatically included at all times, unless overridden by properties or themes.
* Intended to be swappable.
*
* NOTE: currently targeted toward Foundation CSS.
*
* NOTE: variables must now be defined using #assign, not #global (treat this file as if it were being
*   included in its own namespace, even if it is not).
* 
-->

<#-- 
*************************************
* MAIN STYLES *
*************************************
* Cato automatically recognizes the "styles" global hash.
-->

<#assign styles = {
  <#-- Misc -->
    "framework" : "foundation",
    "disabled" : "disabled",
    "active" : "active",
    "button" : "button",
    "button_prefix" : "",
    "button_group" : "button-group",
    "button_force" : "force-button",
    "button_default" : "button tiny",
    "tiny" : "tiny",
    "small" : "small",
    "medium" : "medium",
    "large" : "large",
    "round" : "round",
    "radius" : "radius",
    "expand" : "expand",
    "collapse" : "collapse",
    "collapsed" : "collapsed",
    "required" : "required",
    "prefix" : "prefix",
    "postfix" : "postfix",
    "hidden" : "hide",
    "icon" : "fi",
    "icon_prefix" : "fi-",
    "icon_button" : "fi-widget",
    "icon_button_value" : "&#xf214;",
    "icon_calendar" : "fi-calendar",
    "icon_arrow" : "fi-arrow-right",
    "icon_list" : "fi-list",
    "icon_user" : "fi-torso-female",
    "icon_password" : "fi-lock",
    "icon_tenant" : "fi-cloud",
    "icon_error" : "fi-alert",
    "heading_level_prefix" : "heading-level-",  
    "switch" : "switch",
    
  <#-- Menus 
       menu_xxx classes are looked up by the @menu and @menuitem macros as defaults for each menu type. --> 
    <#-- Generic menu types -->
    "menu_generic" : "",  
    "menu_generic_item" : "", 
    "menu_generic_item_link" : "",
    "menu_generic_item_submit" : "", 
    "menu_button" : "button-group force-button",
    "menu_button_item" : "",
    "menu_button_item_link" : "button tiny",
    "menu_button_item_submit" : "button tiny",
    <#-- Main navigation menus -->
    "menu_main" : "dropdown",
    "menu_main_wrap" : "has-dropdown not-click active",        
    "menu_main_item" : "",
    "menu_main_item_link" : "",
    "menu_main_item_submit" : "", 
    "menu_sidebar" : "side-nav",
    "menu_sidebar_wrap" :"", 
    "menu_sidebar_item" : "",
    "menu_sidebar_item_link" : "",
    "menu_sidebar_item_submit" : "", 
    <#-- Tab and secondary navigation menus-->
    "menu_tab" : "button-group force-button", 
    "menu_tab_item" : "", 
    "menu_tab_item_link" : "button tiny",
    "menu_tab_item_submit" : "button", 
    "menu_subtab" : "button-group force-button",
    "menu_subtab_item" : "",
    "menu_subtab_item_link" : "button tiny",
    "menu_subtab_item_submit" : "button tiny", 
    <#-- Default section menu -->
    "menu_section" : "button-group",
    "menu_section_item" : "",
    "menu_section_item_link" : "button tiny",
    "menu_section_item_submit" : "button tiny", 
    <#-- Default section menu inlined with title
        FIXME: looks too big/clumsy with these buttons (floats right of title) -->
    "menu_section_inline" : "button-group",
    "menu_section_inline_item" : "",
    "menu_section_inline_item_link" : "button tiny",
    "menu_section_inline_item_submit" : "button tiny", 
    <#-- default entry is used for any encountered menu types that have no specific entries in this hash, 
         and also for individual value fallbacks for values not defined in the type-specific entries above -->    
    "menu_default" : "",  
    "menu_default_item" : "", 
    "menu_default_itemdisabled" : "disabled", 
    "menu_default_itemactive" : "active", 
    "menu_default_itemselected" : "selected", 
    "menu_default_item_contentdisabled" : "disabled", 
    "menu_default_item_contentactive" : "active", 
    "menu_default_item_contentselected" : "selected", 
    "menu_default_item_link" : "",
    "menu_default_item_text" : "text-entry",
    "menu_default_item_submit" : "",  
    
  <#-- Data and Tables -->  
    <#-- table type-based styles 
         used for default table class and attribute lookups by the @table macro, based on table type. -->
    "table_generic" : "",    <#-- represents free-form <table>. probably should have no class (let template decide). -->
    "table_generic_cellspacing" : "",
    "table_generic_rowtype" : "generic",    <#-- the default row type is normally "content", but generic tables need "generic" -->
    "table_data_list" : "basic-table",  <#-- analogous to ofbiz "list" type form widgets (and still very close to "multi" type) -->
    "table_data_list_cellspacing" : 0,
    "table_data_list_responsive" : true,
    <#-- "table_data_list_autoaltrows" : true, -->
    "table_data_list_multiform" : "basic-table",  <#-- analogous to ofbiz "multi" type form widgets (but still basically a "list" type) -->
    "table_data_list_multiform_cellspacing" : 0,
    "table_data_list_multiform_responsive" : false,    
    "table_data_complex" : "basic-table", <#-- like data_list but with complex structure (no form widget equivalent) -->
    "table_data_complex_cellspacing" : 0,
    "table_summary" : "basic-table",
    "table_summary_cellspacing" : 0,
    "table_fields" : "basic-table",    <#-- similar to ofbiz "single" type form widgets; may be acceptable for display-only fields -->
    "table_fields_cellspacing" : 0,
    <#-- default entry is used by @table for any encountered table types that have no specific entries in this hash. 
         in other words, it is the default style for table types that this theme does not recognize, or "all others". 
         it is also used for individual fallback values. -->    
    "table_default" : "basic-table",
    "table_default_cellspacing" : "",
    "table_default_autoaltrows" : false,
    "table_default_rowtype" : "content",
    "table_default_responsive" : "",  <#-- boolean with support for empty value (ternary) -->
    "table_default_responsive_wrap" : "table-responsive", <#-- responsive table wrapping div element (TODO?) -->    
    "table_default_scrollable" : "", <#-- boolean with support for empty value (ternary) -->
    "table_default_responsive_options" : {
        "fixedHeader" : true,
        "scrollX" : true,
        "info" : false,
        "paging" : false,
        "searching" : false,
        "ordering" : true
    },
    "table_default_scrollable_options" : { <#-- this is only used for tables not marked to use responsive but need scrollable=true -->
        "fixedHeader" : false,
        "scrollX" : true,   <#-- note: this option gets overridden -->
        "info" : false,
        "paging" : false,
        "searching" : false,
        "ordering" : false
    },
    
    <#-- other table-related styles -->
    "table_basic" : "basic-table",  <#-- this is not a table type, but simply the basic-table style -->

    "row_reg" : "even",
    "row_alt" : "odd",
    "row_selected" : "selected",
    
  <#-- Text-content-based link styles
    !!! TODO: THIS IS WIP !!!
  
    how to decide which style to use on a link:
      * labeling should be based mainly on the text content of the link, both the literal content and its meaning in context.
      
    record identifiers and sorting fields:
      * if the text is a simple single record (entity) id, name, date, or other record identifier, use link_id, link_name, link_date,
        or if the text type is not listed or cannot be known in advance, link_value.
        * if the id is complex or very long (e.g. multiple-field primary key), use link_longid.
        * if the unknown/other value type is complex or very long, use link_longvalue.
      * if it's a combination of name and id, use link_idname.
      * if it's a longer mix or a description (other than id + name), use link_desc.
      * simple extraneous characters like brackets around an id should not affect selection.
      
    actions and navigation:
      * any static text intended as a link that means to directly or indirectly change the state of the system or
        encourage the user to do so should be labeled with link_action.
        * if the action is very long or complex or contains non-static elements, use link_longaction.
        * in stock ofbiz, sometimes these were marked with extra css classes such as " create", but inconsistently
      * any static text that performs a specific function (but not necessarily changing state of system) such as
        "Download" or "Export" should also be labeled with link_action.
      * if the static text implies a navigation link that will not change the state of the system or perform any function, 
        and simply meant to navigate, it probably belongs as a link_nav.
        * if very long or complex, use link_longnav.
      * TODO: CLARIFY: if the text is a "View" action, it is mostly ambiguous whether it belongs more 
        as a link_action or as link_nav. many of them are currently labeled as link_action.
  -->
    "link_nav" : "button tiny",     <#-- static navigation text without explicit action or implied "view" action, generic, not part of a menu type (see menu_xxx styles above): "Categories" 
                                         sometimes this is ambiguous with link_action (?). if links to an action that will change the state of the system directly or indirectly, should be link_action. 
                                         if simply browsing or view action, link_nav is more appropriate, though many times will fall under another
                                         of the link types (link_id, link_desc, etc.) and is more appropriate as those. when it designates
                                         a single record, usually more appropriate as one of the other types. -->
    "link_longnav" : "",            <#-- very long or complex/non-static nav/viewing link: "Categories: All Products Sorted by Name" -->
    "link_action" : "button tiny",  <#-- short action text (1-20 chars): "Add", "Edit", "Remove", "Cancel", etc. not necessarily a verb, action may be implied, but should be an action. usually static text. 
                                         this may overlap with link_nav, but usually there is one more appropriate than the other.
                                         if it's a static action like "View", somewhat ambiguous (TODO: clarify) -->
    "link_longaction" : "",         <#-- a very long (more than 20-30 chars) or complex/non-static action text: "Add Content Repository For Order Removal: WS100000" -->
    "link_id" : "button tiny",      <#-- the short ID of a record (1-20 chars): "WS10000", "10000", "ORDER_CANCELLED", etc. -->
    "link_longid" : "button tiny",  <#-- the long ID of a record (more than 20-30 chars); for records that do not have short IDs: "WS100000000000-ITEM10000000000000" -->
    "link_name" : "button tiny",    <#-- the name of a record: "My Order 23", "Some Value", "Cancelled", etc. -->
    "link_idname" : "button tiny",  <#-- the name and id of a record: "My Order 23 (WS10000)", "WS10000 (My Order 23)" etc. -->
    "link_desc" : "",               <#-- the description of a record: "Order that was placed by admin", "This is some value", "This means order cancelled", etc. 
                                         in general, as soon as a non-action link text contains more than one type of value, and not idname, it should be changed to link_desc.
                                         however, if it contains a specific action(s), it may be more appropriate as link_longaction. -->
    "link_date" : "button tiny",    <#-- the date of a record (fromDate, thruDate, etc.) -->
    "link_number" : "",             <#-- the number of a record (index, sequence num, etc.) -->
    "link_url" : "",                <#-- link containing a URL as its text -->
    "link_value" : "",              <#-- link containing a value of type not previously listed -->
    "link_longvalue" : "",          <#-- link containing a value of type not previously listed but that may be long -->
    "link_text" : "",               <#-- link containing any kind of free-form text -->
    "link_image" : "",              <#-- link for an image -->
    "link_default" : "",            <#-- general link -->
    
  <#-- Colors -->
    "color_green" : "success",
    "color_red" : "alert",
    "color_grey" : "secondary",
    "color_primary" : "primary",
    "color_secondary" : "secondary",
    "color_info" : "info",
    "color_warning" : "warning",
    "color_success" : "success",  
    "color_alert" : "alert",        <#-- Bootstrap: "danger" -->
    "color_error" : "alert",
    "button_color_default" : "",
    "button_color_primary" : "primary",
    "button_color_secondary" : "secondary",
    "button_color_success" : "success",
    "button_color_info" : "info",
    "button_color_warning" : "warning",
    "button_color_alert" : "alert",
    
  <#-- Grid -->
    "grid_row" : "row",
    "grid_cell" : "columns",
    "grid_cell_default" : "large-12",
    "grid_display" : "display",      <#-- display grid -->
    "grid_end" : "end",
    "grid_small" : "small-",   
    "grid_medium" : "medium-",
    "grid_large" : "large-",       <#-- Bootstrap: "col-lg-" -->
    "grid_offset" : "offset-",      <#-- Bootstrap: "col-md-offset-" -->
    "grid_small_offset" : "small-offset-",     
    "grid_medium_offset" : "medium-offset-",    
    "grid_large_offset" : "large-offset-",   
    "grid_block_prefix" : "",
    "grid_block_postfix" : "block-grid-",
    "grid_columns_1" : "large-1 columns",
    "grid_columns_2" : "large-2 medium-3 columns",
    "grid_columns_3" : "large-3 medium-4 columns",
    "grid_columns_4" : "large-4 medium-5 columns",
    "grid_columns_5" : "large-5 medium-6 columns",
    "grid_columns_6" : "large-6 columns",
    "grid_columns_7" : "large-7 medium-6 columns",
    "grid_columns_8" : "large-8 medium-7 columns",
    "grid_columns_9" : "large-9 medium-8 columns",
    "grid_columns_10" : "large-10 medium-9 columns",
    "grid_columns_11" : "large-11 medium-10 columns",
    "grid_columns_12" : "large-12 columns",
    "grid_centered" : "centered",
    "grid_small_centered" : "small-centered",
    "grid_medium_centered" : "medium-centered",
    "grid_large_centered" : "large-centered",
    "grid_sidebar_0_main" : "large-12 columns",
    "grid_sidebar_1_main" : "large-10 medium-9 columns",
    "grid_sidebar_1_side" : "large-2 medium-3 columns",
    "grid_sidebar_2_main" : "large-8 medium-6 columns",
    "grid_sidebar_2_side" : "large-2 medium-3 columns",

  <#-- Text align -->
    "text_left" : "text-left",
    "text_right" : "text-right",
    "text_center" : "text-center",
    "text_justify" : "text-justify",

  <#-- Floats -->
    "float_left" : "left",
    "float_right" : "right",
    "float_clearfix" : "clearfix",
    
  <#-- Navigation -->
    "nav_subnav" : "sub-nav",
    "nav_sidenav" : "navbar-inverse collapse navbar-collapse navbar-ex1-collapse ",
  
  <#-- Pagination -->
    "pagination_wrap" : "pagination-centered",
    "pagination_list" : "pagination",
    "pagination_control" : "",
    "pagination_item" : "",
    "pagination_item_first" : "nav-first",
    "pagination_item_last" : "nav-last",
    "pagination_item_previous" : "nav-previous",
    "pagination_item_next" : "nav-next",
    "pagination_item_active" : "current",
    "pagination_item_disabled" : "unavailable",

  <#-- Lists -->
    "list_inline" : "inline-list",

  <#-- Tile -->
    "tile_container" : "tile-container",
    "tile_wrap" : "tile",
    "tile_color" : "tile-color-",
    "tile_content" : "tile-content",
    "tile_icon" : "tile-icon",
    "tile_title" : "tile-title",
    "tile_overlay" : "tile-overlay",
    "tile_image" : "tile-image",

  <#-- Breadcrumbs -->
    "nav_breadcrumbs" : "breadcrumbs",
    "nav_breadcrumbs_disabled" : "unavailable",
    "nav_breadcrumbs_active" : "current",

  <#-- Panels -->
    "panel_wrap" : "panel",
    "panel_head" : "",
    "panel_title" : "",
    "panel_body" : "",
    "login_wrap" : "large-3 login-box",                  <#-- the login box is a special form of a panel in this case -->
    "login_header": "",
    "login_body" : "signup-panel right-solid",

  <#-- Alert Box -->
    "alert_wrap" : "alert-box",    <#-- Bootstrap: "alert" -->
    "alert_prefix_type" : "",             <#-- Bootstrap: "alert-"; Note: This may be removed -->
    "alert_type_info" : "info",
    "alert_type_success" : "success",
    "alert_type__warning" : "warning",
    "alert_type_secondary" : "secondary",  
    "alert_type_alert" : "alert",        
    "alert_type_error" : "alert",

  <#-- Pricing Tables -->
    "pricing_wrap" : "pricing-table",
    "pricing_price" : "price",
    "pricing_description" : "description",
    "pricing_title" : "title",
    "pricing_cta" : "cta-button",
    "pricing_bullet" : "bullet-item",

  <#-- Modal -->
    "modal_wrap" : "reveal-modal",

  <#-- Chart -->
    "chart_legend" : "chart-legend",

  <#-- Progress Bar -->
    "progress_container" : "progress",   <#-- Bootstrap: "progress" -->
    "progress_wrap" : "",           <#-- Bootstrap: "progress-bar" -->
    "progress_bar" : "meter",       <#-- Bootstrap: "sr-only" -->

  <#-- Fields 
       fields_xxx classes and settings are looked up by the @fields and @field macros as defaults for
       fields type and field type. -->
    "fields_wrap" : "collapse",
    "fields_label" : "prefix",
    "fields_default_labeltype" : "gridarea",
    "fields_default_labellayout" : "left",
    "fields_default_labelarea" : true,
    "fields_default_labelareaexceptions" : "submit submitarea",

    "fields_default_nolabels_labeltype" : "none",
    "fields_default_nolabels_labellayout" : "none",
    "fields_default_nolabels_labelarea" : false,
    "fields_default_nolabels_labelareaexceptions" : "", 

    "fields_generic_labeltype" : "gridarea",
    "fields_generic_labellayout" : "left",
    "fields_generic_labelarea" : false,
    "fields_generic_labelareaexceptions" : "", 

  <#-- Field type style name maps
       These map cato and ofbiz field types to style names to represent the fields in CSS, so they can be unified.
       For any entries not specified, "default" entry is consulted.
       The boolean true means use the cato or ofbiz type name as style name.
       Note these names are not full CSS style names, but prefixes or suffixes. -->
    "field_type_stylenames_cato" : {
        "default": true
    },
    "field_type_stylenames_ofbiz" : {
        "display": "display",
        "hyperlink": "hyperlink",
        "text": "input",
        "textarea": "textarea",
        "date-time": "datetime",
        "drop-down": "select",
        "check": "checkbox",
        "radio": "radio",
        "submit": "submit",
        "reset": "reset",
        "hidden": "hidden",
        "ignored": "ignored",
        "text-find": "textfind",
        "date-find": "datefind",
        "range-find": "rangefind",
        "lookup": "lookup",
        "file": "file",
        "password": "password",
        "image": "image",
        "display-entity": "displayentity",
        "container": "container",
        "default": "other"
    },
    
  <#-- Form type to @table type maps -->
    "form_type_tabletypes_ofbiz" : {
        "list": "data-list",
        "multi": "data-list-multiform",
        "default": "generic"
    },
    
  <#-- Field select element multiple-select classes (jQuery asmselect) -->
    "field_select_asmselect" : {
      "containerClass" : "asmContainer",            <#-- Class for container that wraps this widget -->
      "selectClass" : "asmSelect",                  <#-- Class for the newly created <select> -->
      "optionDisabledClass" : "asmOptionDisabled",  <#-- Class for items that are already selected / disabled -->
      "listClass" : "asmList",                      <#-- Class for the list ($ol) -->
      "listSortableClass" : "asmListSortable",      <#-- Another class given to the list when it is sortable -->
      "listItemClass" : "asmListItem",              <#-- Class for the <li> list items -->
      "listItemLabelClass" : "asmListItemLabel",    <#-- Class for the label text that appears in list items -->
      "removeClass" : "asmListItemRemove button tiny",          <#-- Class given to the "remove" link -->
      "highlightClass" : "asmHighlight"             <#-- Class given to the highlight <span> -->
      <#-- "listType" : "ol",           Ordered list 'ol', or unordered list 'ul' -->
      <#-- "sortable" : false,          Should the list be sortable? -->
      <#-- "highlight" : false,         Use the highlight feature? -->
      <#-- "animate" : false,           Animate the the adding/removing of items in the list? -->
      <#-- "addItemTarget" : "bottom",        Where to place new selected items in list: top or bottom -->
      <#-- "hideWhenAdded" : false,         Hide the option when added to the list? works only in FF -->
      <#-- "debugMode" : false,         Debug mode keeps original select visible -->

      <#-- "removeLabel" : "remove",          Text used in the "remove" link -->
      <#-- "highlightAddedLabel" : "Added: ",       Text that precedes highlight of added item -->
      <#-- "highlightRemovedLabel" : "Removed: "     Text that precedes highlight of removed item -->
    },

  <#-- Always declare last -->
    "dummy" : ""
}>

<#-- 
*************************************
* OTHER TEMPLATING GLOBALS *
*************************************
-->

<#-- (currently none) -->


