{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles.default = {
      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

        "sidebar.verticalTabs" = true;
        "browser.tabs.vertical" = true;

        "browser.ctrlTab.recentlyUsedOrder" = false;

        "widget.gtk.titlebar-decoration" = false;

        "browser.newtabpage.activity-stream.improvesearch.handoffToAwesomebar" = true;
        "browser.newtabpage.activity-stream.newTabExperience.enabled" = false;

      "ui.key.accelKey" = 17;
      "ui.key.menuAccessKey" = 0;
      "ui.key.menuAccessKeyFocuses" = false;
    "ui.key.chromeAccess" = 0;
      # ESTE É O FIX MAIS IMPORTANTE:
      "widget.gtk.ignore-bogus-leave-notify" = 1;
                "widget.wayland.use-mouse-position-for-popup" = false;
                "widget.use-xdg-desktop-portal" = false;
                "widget.wayland.enabled" = true;
      };

      userChrome = ''
:root {
  --moody-bg: #22303c;
  --moody-bg-alt: #1B263B;
  --moody-energy: #CC6E2E;
  --moody-tech: #48C4F8;
  --moody-text: #E6D5B8;
  --moody-muted: #6C7A89;

  --navbar-height: 40px;
}

/* remove tabs horizontais */
#TabsToolbar {
  visibility: collapse !important;
}

.titlebar-spacer,
.titlebar-buttonbox-container {
  display: none !important;
}

/* ===================================== */
/* AUTOHIDE NAVBAR */
/* ===================================== */

#navigator-toolbox {
  background-color: var(--moody-bg) !important;
  border-bottom: 1px solid var(--moody-energy) !important;

  height: var(--navbar-height) !important;
  min-height: var(--navbar-height) !important;
  max-height: var(--navbar-height) !important;

  margin-top: calc(-1 * var(--navbar-height)) !important;
  transition: margin-top 0.15s ease !important;

  z-index: 1000 !important;
}

#navigator-toolbox:hover {
  margin-top: 0 !important;
}

#navigator-toolbox:focus-within {
  margin-top: 0 !important;
}

/* ===================================== */
/* NAVBAR */
/* ===================================== */

#nav-bar {
  background-color: var(--moody-bg) !important;
}

/* ===================================== */
/* URL BAR */
/* ===================================== */

#urlbar {
  background-color: var(--moody-bg-alt) !important;
  color: var(--moody-text) !important;
  border: 1px solid var(--moody-energy) !important;
  border-radius: 6px !important;
  font-size: 12px !important;
  padding: 4px 10px !important;
}

#urlbar-background {
  background: transparent !important;
}

/* ===================================== */
/* SIDEBAR */
/* ===================================== */

#sidebar-box {
  background-color: var(--moody-bg) !important;
  border-right: 1px solid var(--moody-energy) !important;
}

#sidebar-header {
  min-width: 34px !important;
  max-width: 34px !important;
}

/* ===================================== */
/* VERTICAL TABS */
/* ===================================== */

.tabbrowser-tab {
  color: var(--moody-muted) !important;
}

.tabbrowser-tab:hover {
  background-color: #0D1B2A !important;
  color: var(--moody-tech) !important;
}

.tabbrowser-tab[selected="true"] {
  background-color: var(--moody-bg-alt) !important;
  border-left: 3px solid var(--moody-energy) !important;
  color: var(--moody-tech) !important;
}

/* ===================================== */
/* BACKGROUND */
/* ===================================== */

window,
#browser {
  background-color: var(--moody-bg) !important;
}
            '';
        };
    };
}
