using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using static CharacterEnums;

public class CharacterManager : MonoBehaviour
{
    private List<Character> _characters;

    [SerializeField]
    private GameObject _characterPrefab;

    private void Start() {
        _characters = new List<Character>();
    }

    public void ShowCharacter(string name, string position) {
        if (!Enum.TryParse(name, out CharacterName nameEnum))
        {
            Debug.LogWarning($"Failed to parse character name to enum: {name}");
            return;
        }

        if (!Enum.TryParse(position, out CharacterPosition positionEnum)) {
            Debug.LogWarning($"Failed to parse character position to enum: {position}");
            return;
        }

        ShowCharacter(nameEnum, positionEnum);
    }

    public void ShowCharacter(CharacterName name, CharacterPosition position) {
        var character = _characters.FirstOrDefault(x => x.Name == name);

        if (character == null) {
            var characterObject = Instantiate(_characterPrefab, gameObject.transform, false);

            character = characterObject.GetComponent<Character>();

            _characters.Add(character);
        }
        else if (character.IsShowing) {
            character.GetComponent<Character>().UpdatePosition(position);
            
            return;
        }

        character.Init(name, position);
    }

    public void HideCharacter(string name) {
        if (!Enum.TryParse(name, out CharacterName nameEnum)) {
            Debug.LogWarning($"Failed to parse character name to character enum: {name}");
            return;
        }

        HideCharacter(nameEnum);
    }

    public void HideCharacter(CharacterName name) {
        var character = _characters.FirstOrDefault(x => x.Name == name);
        if (character?.IsShowing != true) {
            Debug.LogWarning($"Character {name} is not currently shown. Can't hide it.");
            return;
        } else {
            character.Hide();
        }
    }
}
