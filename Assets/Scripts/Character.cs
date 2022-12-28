using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;
using static CharacterEnums;

public class Character : MonoBehaviour {

    private SpriteRenderer sr;
    private CharacterSprites _sprites;

    public CharacterPosition Position { get; private set; }

    public CharacterName Name { get; private set; }
    public bool IsShowing { get; private set; }

    private float _offScreenX;
    private float _onScreenX;
    private readonly float _animationSpeed = 0.01f;

    public void Init(CharacterName name, CharacterPosition position) {
        Name = name;
        Position = position;
        _sprites = GetComponent<CharacterSprites>();
        sr = GetComponent<SpriteRenderer>();
        
        Show();
    }

    public void Show() {

        SetAnimationValues();

        // Position outside of the screen
        transform.position = new Vector3(_offScreenX, transform.position.y, transform.localPosition.z);
        
        sr.sortingOrder = 1;

        // Set correct sprite
        UpdateSprite();

        LeanTween.moveX(gameObject, _onScreenX, _animationSpeed).setEase(LeanTweenType.linear).setOnComplete(() =>
        {
            IsShowing = true;
        });
    }

    public void UpdatePosition(CharacterPosition position) {
        Position = position;
        Show();
    }

    public void Hide() {
        transform.position = new Vector3(50, 0, 1);
        /*
        LeanTween.moveX(gameObject, _offScreenX, _animationSpeed).setEase(LeanTweenType.linear).setOnComplete(() =>
        {
            IsShowing = false;
        });*/
    }

    private void SetAnimationValues() {
        switch (Position) {
            case CharacterPosition.Left:
                _onScreenX = -6;
                _offScreenX = -30;
                break;

            case CharacterPosition.Center:
                _onScreenX = 0;
                _offScreenX = -30;
                break;

            case CharacterPosition.Right:
                _onScreenX = 6;
                _offScreenX = 30;
                break;
        }
    }
    private void UpdateSprite() {
        var sprite = _sprites.GetSprite(Name);

        sr.sprite = sprite;
    }
}
