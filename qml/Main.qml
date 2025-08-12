import Felgo
import QtQuick
import "basic_librairies/BasicVideo/v1"
import "basic_librairies/BasicScroll/v2"
import "basic_librairies/BasicImageSourceHover/v2"
import "basic_librairies/BasicImage/v3"
import "basic_librairies/BasicImageHover/v1"
import "basic_librairies/BasicText/v4"
import "testing/translation"

GameWindow {

    id: mGAME_WINDOW_BASIC_LIBRAIRIES

    licenseKey: "5C6D917592593907DAE23DBD3D5BDD8A6BCB6D21F8620596962C5FEAF97C70BEBBE25BBBFD92906E8F9C21F5C899BBC2A0D50968974431480A4D17D7BBA06C9B31392B68D3F09A82460C1072FC2C0929AE464A8F04841696D2D59BE302CA4743D7AF3117B77470ED9700787B0BBFD80C0648D3952BC703BA11E36773D2C79F6CB8487C6315387DCE4D7C9DBFB4462F3E86ED19CF8672714B64961EBB2D6197F07FF68BCD6F70127C8A2C06590AF92779B54B2CA22153455ADD7CC2E1FF6DC1182580DF21A2720E7CDD40881E7A164FB68593B922D95CBE6675DC2B560D9F8515C535AD6595384A257A5100841D5B8673243E2D766A17338E7006ED2F964800B460F5D478EA30FB24845AB7647223509AB1BEE56A732CB06D7FAF05566BC3D2DBABFCC8415A01CEBC0D49C4CE21321EA0286390E8A0BC20E32FCC1CC09072B7F02AF309FCF67F84B7D1916A480F5D83FC"

    Component.onCompleted: {
        console.log(" -- Instantiation recue au niveau de Qt - la page est prete pour Qt; mQtObject.mIsSendToHTML= " + mQtObject.mIsSendToHTML);
        start();
    }

    webObjects: [
        /**
           Constructor: is called when the connection between internet and GameWindow is established.
           Should replace the component.onCompleted of the GameWindow
          */
        QtObject {
            id: webObject
            property string url
            property string title
            function clientReady(sMsg) {
                console.log("Connection ready")
                mQtObject.mIsSendToHTML = true
                /*
                              Action done at start
                              */
            }
        }
        /**
           Object to measure the time to load the GameWindow
          */
        , QtObject {
            id: mQtObject
            property bool mIsSendToHTML: false      // each time this boolean is set at true, we will trigger an update in html
        }
    ]

    // Tuto_BasicScrollBar_v2 {    /// change the tuto here to change to a new one
    //     id: mThis
    //     Component.onCompleted: {
    //         mThis.startTuto();
    //     }
    // }

    Testing_Translation {
        Component.onCompleted: {
            settings.language = "en_EN"
            startTuto();
        }
    }

    function start() {
        /*
          Uncomment the Tuto you want to launch
          */
        // launchTuto("Basic/v1", "Tuto_Basic_v1");

        // launchTuto("BasicChat/v3", "Tuto_BasicChat_v3");

        // launchTuto("BasicDebug/v1", "Tuto_BasicDebugWindow_v1")

        // launchTuto("BasicImage/v3", "Tuto_BasicImage_v3");

        // launchTuto("BasicImageHover/v1", "Tuto_BasicImageHover_v1");

        // launchTuto("BasicImageMulti/v1", "Tuto_BasicImageMulti_v1");

        // launchTuto("BasicImageSource/v4", "Tuto_BasicImageSource_v4");
        // launchTuto("BasicImageSource/v3", "Tuto_BasicImageSource_v3_cancelDownload");

        // launchTuto("BasicImageSourceHover/v2", "Tuto_BasicImageSourceHover_v2");

        // launchTuto("BasicItem/v3", "Tuto_BasicItem_v3");

        // launchTuto("BasicLoader/v1", "Tuto_BasicLoader_v1");

        // launchTuto("BasicLockNumber/v1", "Tuto_BasicLockNumbers_v1");

        // launchTuto("BasicScroll/v2", "Tuto_BasicScrollBar_v2");

        // launchTuto("BasicSprites/v3", "Tuto_BasicSprite_Loading_V3");
        // launchTuto("BasicSprites/v3", "Tuto_BasicSprite_ShowHide_V3");

        // launchTuto("BasicSubWindow/v3", "Tuto_BasicSubWindow_v3");
        // launchTuto("BasicSubWindow/v3", "Tuto_BasicSubWindowGlowClick_v3");
        // launchTuto("BasicSubWindow/v3", "Tuto_BasicSubWindowGlowClickChange_v3");
        // launchTuto("BasicSubWindow/v3", "Tuto_BasicSubWindowSprite_v3");
        // launchTuto("BasicSubWindow/v3", "Tuto_BasicSubWindowGlowClickHide_v3");

        // launchTuto("BasicText/v4", "Tuto_BasicText_v4");

        // launchTuto("Utils/v1", "Tuto_BasicDisplay_v1");

        // launchTuto("BasicVideo/v1", "Tuto_BasicVideo_v1");







        /*
          Uncomment the testing you want to launch
          */
        // launchTesting("keyboard", "Testing_Keyboard")
        // launchTesting("image", "Testing_Image")
        // launchTesting("video", "Testing_Video");
        // launchTesting("translation", "Testing_Translation")
        // launchTesting("image_download", "Testing_Download_Many_Images_from_URL")
        // launchTesting("test_Basic", "Testing_Basic_v1")

    }

    function launchTuto(sPathSimple, sNameComponent) {
        let lPathPlusName = "basic_librairies/" + sPathSimple + "/" + sNameComponent + ".qml";
        let lComponent = Qt.createComponent(lPathPlusName);
        let lTuto = lComponent.createObject(mGAME_WINDOW_BASIC_LIBRAIRIES)
        lTuto.startTuto();
    }

    function launchTesting(sPathSimple, sNameComponent) {
        let lComponent = Qt.createComponent("testing/" + sPathSimple + "/" + sNameComponent + ".qml");
        let lTesting = lComponent.createObject(mGAME_WINDOW_BASIC_LIBRAIRIES)
        lTesting.startTuto()
    }




}
