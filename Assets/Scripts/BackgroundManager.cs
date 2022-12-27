using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BackgroundManager : MonoBehaviour {

    [SerializeField] GameObject[] backgrounds;

    private void DisableAll() {
        foreach (GameObject background in backgrounds) { 
            background.SetActive(false);
        }
    }

    public void ChangeBackground(string backgroundName) { 
        DisableAll();
        foreach (GameObject background in backgrounds) {
            if (backgroundName == background.tag) background.SetActive(true);
        }
    }
    
}
