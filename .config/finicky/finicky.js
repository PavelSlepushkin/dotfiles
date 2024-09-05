// ~/.finicky.js
// profile name is a directory in 
// ls ~/Library/Application\ Support/Google/Chrome/
const chromeOkta = {
  name: "Google Chrome",
  profile: "Default",
};

const chromeCloud = {
  name: "Google Chrome",
  profile: "Profile 1",
};

const chromePersonal = {
  name: "Google Chrome",
  profile: "Profile 2",
};

module.exports = {
  //legacy :)
  //need to switch to chrome back
  //defaultBrowser: "Firefox",
  //defaultBrowser: "Google Chrome",
  defaultBrowser: chromeOkta,
  // rewrite: [
  //   {
  //     // Redirect all urls to use https
  //     match: ({ url }) => url.protocol === "http",
  //     url: { protocol: "https" }
  //   }
  // ],
  handlers: [
    {
      // Open apple.com and example.com urls in Safari
      match: finicky.matchHostnames(["apple.com", "example.com"]),
      browser: "Safari"
    },
    // browser staff moved to regular OKTA account
    // {
    //   // Open TFE in cloud accounts
    //   // argo also should go via cloud account at the moment
    //   // https://tfe.devops.kyriba.com
    //   // match: finicky.matchHostnames(["tfe.devops.kyriba.com", "argocd.core.aws.kyriba.com"]),
    //   match: finicky.matchHostnames(["tfe.devops.kyriba.com",]),
    //   //browser: "Google Chrome",
    //   browser: chromeCloud,
    // },
    {
      // Open any url that includes the string "workplace" in Firefox
      match: /workplace/,
      browser: "Firefox"
    },
    {
      // Argo prod now works in Chrome - but not with admin creds
      match: finicky.matchHostnames(["ro-argocd.core.aws.kyriba.com", "gitlab.com", "argocd.dev.kod.kyriba.com","localhost"]),
      //browser: "Google Chrome",
      browser: chromeOkta,
    },
    {
      // Open google.com and *.google.com urls in Google Chrome
      // This was in use mostly for meet, keeping it up as legacy
      match: [
        "google.com/*", // match google.com urls
        "*.google.com/*", // match google.com subdomains
      ],
      browser: chromeOkta,
    }
  ]
};
