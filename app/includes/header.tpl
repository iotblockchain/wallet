<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>IoT Data Blockchain Wallet</title>
<link rel="stylesheet" href="css/etherwallet-master.min.css">
<script type="text/javascript" src="js/etherwallet-static.min.js"></script>
<script type="text/javascript" src="js/etherwallet-master.js"></script>
<!--
<link href="images/fav/favicon-32x32.png" rel="icon" type="image/png" sizes="32x32">
<link href="images/fav/favicon-16x16.png" rel="icon" type="image/png" sizes="16x16">
<link href="images/fav/favicon.ico" rel="shortcut icon">
-->
</head>
<body>

<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

@@if (site === 'mew' ) {
  <div class="small announcement annoucement-danger">
    <div class="container">
      DON'T GET PHISHED, please! 🎣 Thank you! 🤗
      <br />
      1. BOOKMARK <a href="https://www.myetherwallet.com"> MYETHERWALLET.COM </a>
      <span class="hidden-xs">
        &nbsp;&nbsp;&nbsp;&nbsp;
        2. INSTALL <a href="https://chrome.google.com/webstore/detail/etheraddresslookup/pdknmigbbbhmllnmgdfalmedcmcefdfn" target="_blank" rel="noopener noreferrer">EAL</a>
        or
        <a href="https://myetherwallet.github.io/knowledge-base/migration/moving-from-private-key-to-metamask.html" target="_blank" rel="noopener noreferrer">MetaMask</a>
        or
        <a href="https://chrome.google.com/webstore/detail/cryptonite-by-metacert/keghdcpemohlojlglbiegihkljkgnige" target="_blank" rel="noopener noreferrer">Cryptonite</a>
      </span>
    </div>
  </div>
}

<section class="bg-gradient header-branding">
  <section class="container">
    <a class="brand" href="/" aria-label="Go to homepage">IoT Data Blockchain Wallet</a>
    <div class="tagline">

    <span class="hidden-xs">3.11.3.2</span>

    <span class="dropdown dropdown-lang" ng-cloak>
      <a tabindex="0"  aria-haspopup="true" aria-expanded="false" aria-label="change language. current language {{curLang}}" class="dropdown-toggle  btn btn-white" ng-click="dropdown = !dropdown">{{curLang}}<i class="caret"></i></a>
      <ul class="dropdown-menu" ng-show="dropdown">
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Català']"          ng&#45;click="changeLanguage('ca','Català'         )"> Català          </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Deutsch']"         ng&#45;click="changeLanguage('de','Deutsch'        )"> Deutsch         </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Ελληνικά']"        ng&#45;click="changeLanguage('el','Ελληνικά'       )"> Ελληνικά        </a></li> -->
        <li><a ng-class="{true:'active'}[curLang=='English']"         ng-click="changeLanguage('en','English'        )"> English         </a></li>
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Español']"         ng&#45;click="changeLanguage('es','Español'        )"> Español         </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Farsi']"           ng&#45;click="changeLanguage('fa','Farsi'          )"> Farsi           </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Suomi']"           ng&#45;click="changeLanguage('fi','Suomi'          )"> Suomi           </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Français']"        ng&#45;click="changeLanguage('fr','Français'       )"> Français        </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Magyar']"          ng&#45;click="changeLanguage('hu','Magyar'         )"> Magyar          </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Haitian Creole']"  ng&#45;click="changeLanguage('ht','Haitian Creole' )"> Haitian Creole  </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Indonesian']"      ng&#45;click="changeLanguage('id','Indonesian'     )"> Bahasa Indonesia</a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Italiano']"        ng&#45;click="changeLanguage('it','Italiano'       )"> Italiano        </a></li> -->
        <li><a ng-class="{true:'active'}[curLang=='日本語']"           ng-click="changeLanguage('ja','日本語'          )"> 日本語          </a></li>
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='한국어']"            ng&#45;click="changeLanguage('ko','한국어'          )"> 한국어           </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Nederlands']"      ng&#45;click="changeLanguage('nl','Nederlands'     )"> Nederlands      </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Norsk Bokmål']"    ng&#45;click="changeLanguage('no','Norsk Bokmål'   )"> Norsk Bokmål    </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Polski']"          ng&#45;click="changeLanguage('pl','Polski'         )"> Polski          </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Português']"       ng&#45;click="changeLanguage('pt','Português'      )"> Português       </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Русский']"         ng&#45;click="changeLanguage('ru','Русский'        )"> Русский         </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='ภาษาไทย']"         ng&#45;click="changeLanguage('th','ภาษาไทย'        )"> ภาษาไทย         </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Türkçe']"          ng&#45;click="changeLanguage('tr','Türkçe'         )"> Türkçe          </a></li> -->
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='Tiếng Việt']"      ng&#45;click="changeLanguage('vi','Tiếng Việt'     )"> Tiếng Việt      </a></li> -->
        <li><a ng-class="{true:'active'}[curLang=='简体中文']"         ng-click="changeLanguage('zhcn','简体中文'      )"> 简体中文         </a></li>
        <!-- <li><a ng&#45;class="{true:'active'}[curLang=='繁體中文']"         ng&#45;click="changeLanguage('zhtw','繁體中文'      )"> 繁體中文         </a></li> -->
        <li role="separator" class="divider"></li>
        <!-- <li><a data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></li> -->
      </ul>
    </span>

    <span class="dropdown dropdown-gas" ng-cloak>
      <a tabindex="0" aria-haspopup="true" aria-label="adjust gas price" class="dropdown-toggle  btn btn-white" ng-click="dropdownGasPrice = !dropdownGasPrice">
        <span translate="OFFLINE_Step2_Label_3">Gas Price</span>:
          {{gas.value}} Gwei
          <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownGasPrice">
        <div class="header--gas">
          <span translate="OFFLINE_Step2_Label_3">Gas Price</span>:
          {{gas.value}} Gwei
          <input type="range" ng-model="gas.value" min="{{gas.min}}" max="{{gas.max}}" step="{{gas.step}}" ng-change="gasChanged()"/>
          <p class="small col-xs-4 text-left"> <!--translate="GAS_Price_1"-->
            Really, really slow
          </p>
          <p class="small col-xs-4 text-center"> <!--translate="GAS_Price_2"-->
            Maybe Fast?
          </p>
          <p class="small col-xs-4 text-right"> <!--translate="GAS_Price_3"-->
            Fast
          </p>
          <br />
          <p class="small" style="white-space:normal;font-weight:300;margin: 2rem 0 0;" translate="GAS_PRICE_Desc"></p>
        </div>
      </ul>
      <p class="dropdown-gas__msg"
         ng-show="gasPriceMsg"
         ng-hide="ajaxReq.type!='ETH'">
        The network is really full right now. Check
        <a href="https://ethgasstation.info/"
           target="_blank" rel="noopener noreferrer">Eth Gas Station</a>
        for gas price to use.
      </p>
    </span>

    <!-- Warning: The separators you see on the frontend are in styles/etherwallet-custom.less. If you add / change a node, you have to adjust these. Ping tayvano if you're not a CSS wizard -->
    <span class="dropdown dropdown-node" ng-cloak>
      <a tabindex="0"
         aria-haspopup="true"
         aria-label="change node. current node {{curNode.name}} node by {{curNode.service}}"
         class="dropdown-toggle  btn btn-white"
         ng-click="dropdownNode = !dropdownNode">
           <span translate="X_Network">Network:</span>
           {{curNode.name}}
           <small>({{curNode.service}})</small>
           <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownNode">
        <li ng-repeat="(key, value) in nodeList">
          <a ng-class="{true:'active'}[curNode == key]" ng-click="changeNode(key)">
            {{value.name}}
            <small> ({{value.service}}) </small>
          </a>
        </li>
      </ul>
    </span>

    </div>
  </section>
</section>

<nav role="navigation" aria-label="main navigation" class="container nav-container overflowing" >
  <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
  <div class="nav-scroll">
    <ul class="nav-inner">
      @@if (site === 'mew' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.mew"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
      @@if (site === 'cx' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.cx"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
    </ul>
  </div>
  <a aria-hidden="true"
     ng-show="showRightArrow"
     class="nav-arrow-right"
     ng-click="scrollRight(100);"
     ng-mouseover="scrollHoverIn(false,2);"
     ng-mouseleave="scrollHoverOut()">&#187;</a>
</nav>

@@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
