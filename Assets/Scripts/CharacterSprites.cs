using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static CharacterEnums;

public class CharacterSprites : MonoBehaviour {

    public Sprite John;
    public Sprite Father;
    public Sprite Grandma;
    public Sprite Homeless;
    public Sprite MatchGirl;
    public Sprite Mother;
    public Sprite WorriedGirl;

    public Sprite GetSprite(CharacterName CharacterName) {
        switch (CharacterName) {
            case CharacterName.John:
                return John;
            case CharacterName.Father:
                return Father;
            case CharacterName.Grandma:
                return Grandma;
            case CharacterName.Homeless:
                return Homeless;
            case CharacterName.MatchGirl:
                return MatchGirl;
            case CharacterName.Mother:
                return Mother;
            case CharacterName.WorriedGirl:
                return WorriedGirl;
            default:
                return null;
        }
    }
}
