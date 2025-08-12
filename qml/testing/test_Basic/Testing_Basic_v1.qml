import QtQuick
import Felgo
import "../../abstract"
import "../../basic_librairies/BasicImageSource/v4"
import "../../basic_librairies/Utils/v1"
import "../../basic_librairies/BasicReflection/v3"
import "../../basic_librairies/BasicGlobalFollower/v2"
import "../../basic_librairies/Basic/v1"

SceneAbstract {


    /*
        This project tests the download of BasicImageSource in a massive manner
        It will show all the images on one page. One image appear every 500 ms
        Images are downloaded by BasicImageSourceManager in advance, or on the spot when they are visible

        This project contains all the Bundles of Jomere
        The main page should cal all the assets
        the goal is to see how long it takes to launch

      */

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
    BasicImageSourceManager {
        id: mBasicImageSourceManager
    }
    BasicSource {
        id: mBasicSource
    }
    BIScBasicImageSourceConstants {
        id: cBIS
    }


    ///////////////////////////////////////////////////////////
    ////        TUTO
    ///////////////////////////////////////////////////////////


    Component.onCompleted: {
        setToReadySelf(pBasic3, true)
        setToReadySelf(pBasic1, true)
        setToReadySelf(pBasic7, true)
        setToReadySelf(pBasic2, true)
        setToReadySelf(pBasic6, true)
        setToReadySelf(pBasic6, false)
    }

    Basic {
        id: pBasic1
        mName: "pBasic1"

        Item {
            id: pItem11
            property string mName: "pItem11"

            Basic {
                id: pBasic2
                mName: "pBasic2"
            }

            Basic {
                id: pBasic3
                mName: "pBasic3"

                Item {
                    id: pItem1121
                    property string mName: "pItem1121"

                    Basic {
                        id: pBasic5
                        mName: "pBasic5"

                        mIsReadySelf: true

                    }

                    Basic {
                        id: pBasic6
                        mName: "pBasic6"

                    }
                }

                Basic {
                    id: pBasic4
                    mName: "pBasic4"

                    mIsReadySelf: true

                }

            }
        }

        Item {
            id: pItem12
            property string mName: "pItem12"

            Basic {
                id: pBasic7
                mName: "pBasic7"

                Item {
                    id: pItem1211
                    property string mName: "pItem1211"

                }
            }
        }
    }

    function setToReadySelf(sBasic, sValue) {
        console.log();
        console.log("Setting " + sBasic.getmName() + " to " + sValue);
        sBasic.mIsReadySelf = sValue
        display();
    }

    function display() {
        console.log(pBasic1.vString())
        console.log(pBasic2.vString())
        console.log(pBasic3.vString())
        console.log(pBasic4.vString())
        console.log(pBasic5.vString())
        console.log(pBasic6.vString())
        console.log(pBasic7.vString())
    }


    AppButton {
        id: pThisAppButton

        anchors.centerIn: parent
        width: parent.width * 0.40
        height: parent.height * 0.20
        text: "Click to launch simulation"
        onClicked: {
            parent.display();
            setToReadySelf(pBasic3, true)
            setToReadySelf(pBasic1, true)
            setToReadySelf(pBasic7, true)
            setToReadySelf(pBasic2, true)
            setToReadySelf(pBasic6, true)
            setToReadySelf(pBasic6, false)
            setToReadySelf(pBasic6, true)
        }
    }

    AppButton {
        width: pThisAppButton.width
        height: pThisAppButton.height
        x: pThisAppButton.x
        y: pThisAppButton.y - pThisAppButton.height * 1.25
        text: "Click to show in console"
        onClicked: {
            parent.display();
        }
    }

    AppButton {
        width: pThisAppButton.width
        height: pThisAppButton.height
        x: pThisAppButton.x
        y: pThisAppButton.y + pThisAppButton.height * 1.25
        text: "switch pBasic6.visible= " + pBasic6.visible
        onClicked: {
            pBasic6.visible = !pBasic6.visible
        }
    }















}
