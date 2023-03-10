
using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class InkManager : MonoBehaviour
{

    public BackgroundManager backgroundManager;

    private CharacterManager _characterManager;

    [SerializeField] private TextAsset _inkJsonAsset;
    [SerializeField] private TextMeshProUGUI _textField;
    [SerializeField] private VerticalLayoutGroup _choiceButtonContainer;
    [SerializeField] private Button _choiceButtonPrefab;

    private Story _story;

    void Start() {
        _characterManager = FindObjectOfType<CharacterManager>();
        StartStory();
    }

    void StartStory() {
        _story = new Story(_inkJsonAsset.text);
        _story.BindExternalFunction("ChangeBackground", (string backgroundName) => backgroundManager.ChangeBackground(backgroundName));
        _story.BindExternalFunction("ShowCharacter", (string name, string position) => _characterManager.ShowCharacter(name, position));
        _story.BindExternalFunction("HideCharacter", (string name) => _characterManager.HideCharacter(name));
        DisplayNextLine();
    }

    public bool CheckContinue() {
        if (!_story.canContinue && _story.currentChoices.Count == 0) return false;
        else return true;
    }

    public void DisplayNextLine() {
        if (_story.canContinue) {
            string text = _story.Continue(); // gets next line

            text = text?.Trim(); // removes white space from text

            _textField.text = text; // displays new text
        } else if (_story.currentChoices.Count > 0) {
            DisplayChoices();
        }
    }

    private void DisplayChoices() {
        // checks if choices are already being displaye
        if (_choiceButtonContainer.GetComponentsInChildren<Button>().Length > 0) return;

        for (int i = 0; i < _story.currentChoices.Count; i++) { // iterates through all choices 

            var choice = _story.currentChoices[i];
            var button = CreateChoiceButton(choice.text); // creates a choice button

            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }
    }

    Button CreateChoiceButton(string text) {
        // creates the button from a prefab
        var choiceButton = Instantiate(_choiceButtonPrefab);
        choiceButton.transform.SetParent(_choiceButtonContainer.transform, false);

        // sets text on the button
        var buttonText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
        buttonText.text = text;

        return choiceButton;
    }

    void OnClickChoiceButton(Choice choice) {
        _story.ChooseChoiceIndex(choice.index); // tells ink which choice was selected
        RefreshChoiceView(); // removes choices from the screen
        DisplayNextLine();
    }

    void RefreshChoiceView() {
        if (_choiceButtonContainer != null) {
            foreach (var button in _choiceButtonContainer.GetComponentsInChildren<Button>()) {
                Destroy(button.gameObject);
            }
        }
    }
}
