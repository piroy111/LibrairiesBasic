import QtQuick
import Felgo
import QtMultimedia
import "../../abstract"
import "../../basic_librairies/BasicDebug/v1"
import "../../basic_librairies/Utils/v1"


SceneAbstract {

    id: mTESTING_IMAGE

    /**
        Show the controls and feedbacks on the object video


      */

    /////////////////////////////////////////////////////////////
    //      OTHER LIBRAIRIES NEEDED
    /////////////////////////////////////////////////////////////
    BasicNum {
        id: mBasicNum
    }
    BasicDisplay {
        id: mBasicDisplay
    }

    BasicDebugRectangle{visible: true}


    /*
      The object video
      */
    Video {
        id: mVideo

        width: parent.width / 2
        height: parent.height / 2
        x: parent.width * 0.05
        y: parent.height * 0.20

        source: "../../../assets/Videos/" + "03.12.Schiff.mov"

        visible: true
    }

    /*
      Video data
      */
    BasicDebugWindow {
        widthPercent: 0.30
        xPercent: 0.65
        text: "mVideo.visible= " + mVideo.visible
              + "\nmVideo.source= " + mVideo.source
              + "\n" + "mVideo.error= " + getErrorMessage(mVideo)
    }

    /*
      Play video
      */
    BasicDebugWindow {
        widthPercent: 0.10
        heightPercent: 0.10
        text: "Play video"
        xPercent: widthPercent / 2
        yPercent: 1 - widthPercent * 1.5
        onClicked: {
            console.log("Play video")
            mVideo.play();
        }
    }

    function getErrorMessage(sVideo) {
        let lError = sVideo.error
        switch (lError) {
        case 0: return "there is no current error";
        case 1: return "the video cannot be played due to a problem allocating resources";
        case 2: return "the video format is not supported";
        case 3: return "the video cannot be played due to network issues";
        case 4: return "the video cannot be played due to insufficient permissions";
        case 5: return "the video cannot be played because the media service could not be instantiated";
        default: mBasicDisplay.errorCodeLogic();
        }
    }


}
