import QtQuick
import Felgo
import "../../abstract"


SceneAbstract {

    id: mTESTING_IMAGE

    /**
      Explain differences between width, implicitWidth, paintedWidth


      */


    Column {

        spacing: 20

        AppText {
            text: "Conclusions:"
                + "\nImplicit = sourceSize = original size of the image in the source file"
                + "\nWidth = size of the item in which the image is displayed (cropped)"
                + "\npaintedWith= the size of the image before the crop and after the size adjustment"
            width: 800
            height: 150
            color: "yellow"
        }

        Rectangle {
        }

        AppText {
            text: "FillMode= Image.PreserveAspectFit"
                  + "\nInside a rectangle of 200*200"
                  + "\nwidth= " + mAppImage.width
                  + ", implicitWidth= " + mAppImage.implicitWidth
                  + ", paintedWidth= " + mAppImage.paintedWidth
                  + ", sourceSize.width= " + mAppImage.sourceSize.width
                  + "\nheight= " + mAppImage.height
                  + ", implicitheight= " + mAppImage.implicitHeight
                  + ", paintedheight= " + mAppImage.paintedHeight
                  + ", sourceSize.height= " + mAppImage.sourceSize.height
            width: 800
            height: 150
            color: "white"
        }
        Rectangle {
            width: 200
            height: 200
            color: "lightyellow"
            AppImage {
                id: mAppImage

                source: "../../../assets/Images/basic_librairies/Angel/" + "Angel_001.jpg"

                width: 200
                height: width

                fillMode: Image.PreserveAspectFit
            }

        }

        AppText {
            text: "FillMode= Image.PreserveAspectCrop"
                  + "\nInside a rectanlge of 200*200"
                  + "\nwidth= " + mAppImage2.width
                  + ", implicitWidth= " + mAppImage2.implicitWidth
                  + ", paintedWidth= " + mAppImage2.paintedWidth
                  + ", sourceSize.width= " + mAppImage2.sourceSize.width
                  + "\nheight= " + mAppImage2.height
                  + ", implicitheight= " + mAppImage2.implicitHeight
                  + ", paintedheight= " + mAppImage2.paintedHeight
                  + ", sourceSize.height= " + mAppImage2.sourceSize.height
            width: 900
            height: 150
            color: "white"
        }
        Rectangle {
            width: 200
            height: 200
            color: "lightyellow"
            AppImage {
                id: mAppImage2

                source: "../../../assets/Images/basic_librairies/Angel/" + "Angel_001.jpg"

                width: 200
                height: width

                fillMode: Image.PreserveAspectCrop
            }

        }

        AppText {
            text: "FillMode= Image.Stretch"
                  + "\nInside a rectangle of 200*200"
                  + "\nwidth= " + mAppImage3.width
                  + ", implicitWidth= " + mAppImage3.implicitWidth
                  + ", paintedWidth= " + mAppImage3.paintedWidth
                  + ", sourceSize.width= " + mAppImage3.sourceSize.width
                  + "\nheight= " + mAppImage3.height
                  + ", implicitheight= " + mAppImage3.implicitHeight
                  + ", paintedheight= " + mAppImage3.paintedHeight
                  + ", sourceSize.height= " + mAppImage3.sourceSize.height
            width: 900
            height: 150
            color: "white"
        }
        Rectangle {
            width: 200
            height: 200
            color: "lightyellow"
            AppImage {
                id: mAppImage3

                source: "../../../assets/Images/basic_librairies/Angel/" + "Angel_001.jpg"

                width: 200
                height: width

                fillMode: Image.Stretch
            }

        }
    }



}











