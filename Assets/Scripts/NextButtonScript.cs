using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class NextButtonScript : MonoBehaviour
{
    private bool hasNextLine;
    private InkManager _inkManager;

    void Start() {
        _inkManager = FindObjectOfType<InkManager>();

        if (_inkManager == null) {
            Debug.LogError("Ink Manager was not found!");
        }
    }

    public void OnClick() {
        if (_inkManager.CheckContinue()) _inkManager?.DisplayNextLine();
        else SceneManager.LoadScene("EndGame");
    }
}
