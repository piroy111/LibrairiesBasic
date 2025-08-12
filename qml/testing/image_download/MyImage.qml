import QtQuick
import Felgo
import "../../basic_librairies/BasicImageSource/v4"

BasicImageSource {

    id: mThis

    visible: false

    property real wMin: 0.05
    property real wMax: 0.20

    widthPercent: (Math.random() * (wMax - wMin)) + wMin;
    heightPercent: (Math.random() * (wMax - wMin)) + wMin;

    property real xMax
    property real yMax
    property real xMin
    property real yMin

    xMin: 0
    xMax: 1 - widthPercent
    yMin: 0
    yMax: 1 - heightPercent

    xPercent: (Math.random() * (xMax - xMin)) + xMin;
    yPercent: (Math.random() * (yMax - yMin)) + yMin;

    mPriorityToDownload: Math.floor(Math.random() * 4) - 1



}
