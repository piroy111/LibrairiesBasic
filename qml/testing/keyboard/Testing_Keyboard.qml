import QtQuick
import Felgo
import "../../abstract"

SceneAbstract {

    /**
      Code to listen to a key pressed --> focus is needed + event.accepted also
      */




    focus: true             // Focus is needed - otherwise it does not work, the event is not activated


    /**
      Listen to the event
      */
    Keys.onPressed: (event)=> {

        if (event.key == Qt.Key_Escape) {

            console.log("Esc has been pressed; Qt.Key_Escape= " + Qt.Key_Escape);


            event.accepted = true;      // Prevents further propagation of the key pressed
        }
    }




}
