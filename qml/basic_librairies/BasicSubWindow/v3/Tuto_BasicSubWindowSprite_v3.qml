import QtQuick
import Felgo
import "../../../abstract"
import "../../Utils/v1"
import "../../BasicReflection/v3"
import "../../BasicGlobalFollower/v2"
import "../../BasicImageSource/v4"
import "../../BasicDebug/v1"
import "../../BasicSprites/v3"
import "../../BasicLoader/v1"

SceneAbstract {

    id: mThisScene

    /////////////////////////////////////////////////////////////
    //      OTHER LIBRAIRIES NEEDED
    /////////////////////////////////////////////////////////////
    BasicDisplay {
        id: mBasicDisplay
    }
    BasicNum {
        id: mBasicNum
    }
    BasicConst {
        id: mBasicConst
    }
    BasicReflection {
        id: mBasicReflection
    }
    BasicGlobalFollower {
        id: mBasicGlobalFollower
    }
    BasicSpriteManager {
        id: mBasicSpriteManager

        mIS_DEBUG: true
    }
    BasicSource {
        id: mBasicSource

        mMODE_SOURCE: "WebAssembly"
    }
    BasicLoaderManager {
        id: mBasicLoaderManager

        mIS_DEBUG: false
    }



    ///////////////////////////////////////////////////////////
    ////        TUTO
    ///////////////////////////////////////////////////////////

    mDURATION: 0

    /*
      Loader
      */
    function getmListItemToCheckIfLoaded() {
        return [p01, p02]
    }

    AppButton {
        id: pButtonDownload

        width: parent.width * 0.10
        height: parent.height * 0.10
        y: parent.height * 0.50
        x: parent.width - width * 1.8
        text: "Download Images"

        onClicked: {
            mBasicLoaderManager.startCheck(mThisScene, "success", pButtonDownload)
        }

        function success() {
            console.log("-------- Download successful ------------")
            mBasicLoaderManager.toConsole();
            p01.visible = true
            /*
              Debug
              */
            console.log(mBasicDisplay.getmDimensions(p02))
            console.log(mBasicDisplay.getmDimensions(p02.getmThisBasicSprite()))
            console.log(mBasicDisplay.getmDimensions(p03))
        }
    }

    BasicImageSource {
        id: p01

        visible: false

        // sourceSimple: "librairies_basic/Angel/" + "Angel_001.jpg"
        sourceSimple: "librairies_basic/Boss_desk_closeup_noflashlight.jpg"

        heightPercent: 1

        BasicSubWindowSprite {
            id: p02

            subFolder: "2025_04_24_View_main_SideBullBear_Fontain"
            fileSpriteFirst: "20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_1.png"
            fileSpriteLast: "20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_1_Idx_6.png"

            mX0Y0W0H0: [169, 808, 417, 293]


            mIS_SHOW_BORDER: true
            mIS_DEBUG: true
        }

        BasicSubWindowImage {
            id: p03

            sourceSimple: "librairies_basic/Angel/" + "Angel_001.jpg"
            mX0Y0W0H0: [169, 808, 417, 293]
        }

    }



















}

