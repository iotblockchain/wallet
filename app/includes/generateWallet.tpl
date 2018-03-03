<main class="tab-pane block--container active"
      ng-if="globalService.currentTab==globalService.tabs.generateWallet.id"
      ng-controller='walletGenCtrl'
      role="main"
      ng-cloak>

  <article class="" ng-show="!wallet && !showGetAddress">

    <section class="block text-center">
      <br />
      <h1 translate="NAV_GenerateWallet" aria-live="polite">
        Create New Wallet
      </h1>
      <h4 translate="GEN_Label_1">
        Enter password
      </h4>
      <div class="input-group">
        <input name="password"
             class="form-control"
             type="{{showPass && 'password' || 'text'}}"
             placeholder="{{'GEN_Placeholder_1' | translate }}"
             ng-model="password"
             ng-class="isStrongPass() ? 'is-valid' : 'is-invalid'"
             aria-label="{{'GEN_Label_1' | translate}}"/>
        <span tabindex="0"
              aria-label="make password visible"
              role="button"
              class="input-group-addon eye"
              ng-click="showPass=!showPass">
        </span>
      </div>
      <a tabindex="0"
         role="button"
         class="btn btn-primary"
         ng-click="genNewWallet()"
         translate="NAV_GenerateWallet">
           Generate Wallet
      </a>
      <!-- <p translate="x_PasswordDesc"></p> -->
    </section>
  </article>


  <article role="main" class="" ng-show="wallet && !showPaperWallet" > <!-- -->

    <section class="block text-center">
      <br />
      <h1 translate="GEN_Label_2">
        Save your Keystore File (UTC / JSON)
      </h1>

      <a tabindex="0" role="button"
         class="btn btn-primary"
         href="{{blobEnc}}"
         download="{{encFileName}}"
         aria-label="{{'x_Download'|translate}} {{'x_Keystore'|translate}}"
         aria-describedby="x_KeystoreDesc"
         ng-click="downloaded()"
         target="_blank" rel="noopener noreferrer">
        <span translate="x_Download">
          DOWNLOAD
        </span>
        <span translate="x_Keystore2">
          Keystore File (UTC / JSON)
        </span>
      </a>

      <p>
        <a tabindex="0"
           role="button"
           class="btn btn-danger"
           ng-class="fileDownloaded ? '' : 'disabled' "
           ng-click="continueToPaper()">
            <span translate="GET_ConfButton"> I understand. Continue.  </span>
        </a>
      </p>

    </section>
  </article>


  <article role="main" class="" ng-show="showPaperWallet">

    <section class="block text-center">

      <br />

      <h1 translate="GEN_Label_5"> Save your Private Key</h1>
      <textarea aria-label="{{'x_PrivKey'|translate}}"
             aria-describedby="{{'x_PrivKeyDesc'|translate}}"
             class="form-control"
             readonly="readonly"
             rows="3"
             style="max-width: 50rem;margin: auto;"
      >{{wallet.getPrivateKeyString()}}</textarea>
      <br />

      <a tabindex="0"
         aria-label="{{'x_Print'|translate}}"
         aria-describedby="x_PrintDesc"
         role="button"
         class="btn btn-primary"
         ng-click="printQRCode()"
         translate="x_Print">
          PRINT
      </a>

      <a class="btn btn-default btn-sm" ng-click="getAddress()">
        <span translate="GEN_Label_3"> Save your Address </span> →
      </a>

    </section>

  </article>

  <article class="text-left" ng-show="showGetAddress">
    <div class="clearfix collapse-container">

      <div ng-click="wd = !wd">
        <a class="collapse-button"><span ng-show="wd">+</span><span ng-show="!wd">-</span></a>
        <h1 translate="GEN_Unlock">Unlock your wallet to see your address</h1>
        <p translate="x_AddessDesc"></p>
      </div>

      <div ng-show="!wd">
          @@if (site === 'mew' ) {  <wallet-decrypt-drtv></wallet-decrypt-drtv>         }
          @@if (site === 'cx' )  {  <cx-wallet-decrypt-drtv></cx-wallet-decrypt-drtv>   }
      </div>
    </div>

    <div class="row" ng-show="wallet!=null" ng-controller='viewWalletCtrl'>
      @@if (site === 'cx' ) {  @@include( './viewWalletInfo-content.tpl', { "site": "cx" } )    }
      @@if (site === 'mew') {  @@include( './viewWalletInfo-content.tpl', { "site": "mew" } )   }
    </div>

  </article>

</main>
