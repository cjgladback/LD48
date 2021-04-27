using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
//using DG.Tweening;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{
    //public static GameManager ins;
    //public Node startingNode;

    public static event Action<Story> OnCreateStory;
    private List<GameObject> spawnedCharacters;
    public SetVolume audioManager;

    //int pause = -1;


    void Start()
    {
        // Load the next story block
        story = new Story(inkJSONAsset.text);
        if (OnCreateStory != null) OnCreateStory(story);

        story.BindExternalFunction("holdIt", (string timeToWait) =>
        {
            StartCoroutine(StayRightThere(timeToWait));
        });

        story.BindExternalFunction("playIt", (string aSound) =>
        {
            //SetVolume s = gameObject.AddComponent<SetVolume>();
            audioManager.Play(aSound);
        });

        story.BindExternalFunction("stopIt", (string aSound) =>
        {
            //SetVolume s = gameObject.AddComponent<SetVolume>();
            audioManager.StopPlaying(aSound);
        });

        // Start the refresh cycle
        RefreshView();


    }

    /*
    // an attempt at making the game pause; does not seem to effect the operations of the autoplay sections which I should have seen coming
    void Update()
    {
        if (Input.GetKeyUp("space"))
        {
            pause = 1;
            Debug.Log(pause);
            Pause();
        }
    }
    */

    /*
    //skipping function--it's fast, but it doesn't stop
    void Update()
    {
        if (Input.GetKeyDown("space") || Input.GetMouseButtonDown(1))
        {
            story.ChooseChoiceIndex(0);
            RefreshView();
        }
    }
    */

    // This is the main function called every time the story changes. It does a few things:
    // Destroys all the old content and choices.
    // Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
    void RefreshView()
    {
        // Remove all the UI on screen
        RemoveChildren();

        Image storyBacker = Instantiate(panelPrefab) as Image;
        storyBacker.transform.SetParent(canvas.transform, false);



        // Read all the content until we can't continue any more
        while (story.canContinue)
        {
            // Continue gets the next line of the story
            string text = story.Continue();
            // This removes any white space from the text.
            text = text.Trim();

            //declaring and clearing the voice to hand through to CreateContentView()
            string voice = "";


            //check current tags for chat or sfx tags to alter voice
            List<string> tags = story.currentTags;
            if (tags.Count > 0)
            {
                if (tags.Contains("kasey"))
                {
                    voice = "kasey";
                }
                else if (tags.Contains("sarah"))
                {
                    voice = "sarah";
                }
                else if (tags.Contains("beast"))
                {
                    voice = "beast";
                }
            }


            // Display the text on screen!
            CreateContentView(text, voice, storyBacker);
        }

        //discover the location tags
        //location list is: carNight, carDay, lhTop, lhMid, lhGround, entry, hall, hallwindow, stairs, light
        var currentLocation = story.variablesState["location"] as Ink.Runtime.InkList;
        if (currentLocation.ContainsItemNamed("carNight"))
        {
            background.GetComponent<SpriteRenderer>().sprite = carNightSprite;
        }
        else if (currentLocation.ContainsItemNamed("carDay"))
        {
            background.GetComponent<SpriteRenderer>().sprite = carDaySprite;
        }
        else if (currentLocation.ContainsItemNamed("lhTop"))
        {
            background.GetComponent<SpriteRenderer>().sprite = lhTopSprite;
        }
        else if (currentLocation.ContainsItemNamed("lhMid"))
        {
            background.GetComponent<SpriteRenderer>().sprite = lhMidSprite;
        }
        else if (currentLocation.ContainsItemNamed("lhGround"))
        {
            background.GetComponent<SpriteRenderer>().sprite = lhGroundSprite;
        }
        /*
        else if (currentLocation.ContainsItemNamed("entry"))
        {
            background.GetComponent<SpriteRenderer>().sprite = entrySprite;
        }
        */
        else if (currentLocation.ContainsItemNamed("hall"))
        {
            background.GetComponent<SpriteRenderer>().sprite = hallSprite;
        }
        else if (currentLocation.ContainsItemNamed("hallwindow"))
        {
            background.GetComponent<SpriteRenderer>().sprite = hallWindowSprite;
        }
        else if (currentLocation.ContainsItemNamed("stairs"))
        {
            background.GetComponent<SpriteRenderer>().sprite = stairsSprite;
        }
        else if (currentLocation.ContainsItemNamed("light"))
        {
            background.GetComponent<SpriteRenderer>().sprite = lightSprite;
        }

        //TO-DO clear previously created characters
        int spawned = standBack.transform.childCount;
        for (int i = spawned - 1; i >= 0; --i)
        {
            GameObject.Destroy(standBack.transform.GetChild(i).gameObject);
        }

        //run forloop through present characters to determine their number and therefore placement?
        var inSight = story.variablesState["props"] as Ink.Runtime.InkList;
        //Debug.Log(inSight.maxItem.Value + " should be the number.");
        //Ink lists start at 1, unlike arrays
        foreach (var item in inSight)
        {
            string name = $"{item.Key}";
            name = name.Replace("props.", "");
            Debug.Log(name);

            GameObject character = Instantiate(characterPrefab);
            character.transform.SetParent(standBack.transform, true);

            //spent about 4 hours reading through all sorts of documentation and answers failing to find
            //the right way to use a string to find an object/prefab/what have ye to use
            if (name == "dracula")
            {
                character.GetComponent<SpriteRenderer>().sprite = dracula;
            }
            else if (name == "owen")
            {
                character.GetComponent<SpriteRenderer>().sprite = owen;
            }
        }

        // Finding tags has to happen after the story progresses and only looks at the most recent line.
        /*List<string> tags = story.currentTags;
        if (tags.Count > 0)
        {
            if (tags.Contains("chat"))
            {
                Debug.Log("This is a chat message.");
            }
            if (tags.Contains("manager"))
            {
                Debug.Log("The manager is speaking.");
            }
            if (tags.Contains("dare"))
            {
                Debug.Log("Daré is speaking.");
            }
            if (tags.Contains("brad"))
            {
                Debug.Log("Brad is speaking.");
            }
            if (tags.Contains("whitney"))
            {
                Debug.Log("Whitney is speaking.");
            }
            if (tags.Contains("msloop"))
            {
                Debug.Log("Ms. Loop is speaking.");
            }
        }*/

        // If there are tags, search for lighting and location instructions.
        /*if (tags.Count > 0)
        {
            *//*if (tags.Contains("lit"))
            {
                brightness = lt.intensity;
                inLights = GameObject.FindGameObjectsWithTag("InnerLight");
                if (tags.Contains("normal"))
                {
                    brightness = normalLight;
                }
                if (tags.Contains("dark"))
                {
                    brightness = lowLight;
                }
                if (tags.Contains("bright"))
                {
                    brightness = highLight;
                }
                foreach (GameObject inLight in inLights)
                {
                    lt = inLight.GetComponent<Light>();
                    //DOTween sequence to slow light change
                    lt.DOIntensity(brightness, .75f);
                    //lt.intensity = DOTween.brightness;
                }
            }*//*
        }*/




        // Display all the choices, if there are any!
        if (story.currentChoices.Count > 0)
        {
            //check if it's just an ampersand (noting an invisible choice in this story) //can't check if we have a length of time we intend to wait//
            //this unfortunately doesn't guarantee that the waiting and moving on action is indeed happening, but we got null errors did anything fancy here
            //instead of calling the function from Ink
            if (story.currentChoices[0].text.Trim() == "&" /*&& float.Parse(story.variablesState["wait"] as string) != -1.1*/)
            {
                //StartCoroutine(StayRightThere(story.variablesState["wait"] as string));
            }
            else
            {
                for (int i = 0; i < story.currentChoices.Count; i++)
                {
                    Choice choice = story.currentChoices[i];
                    Button button = CreateChoiceView(choice.text.Trim(), canvas);
                    // Tell the button what to do when we press it
                    button.onClick.AddListener(delegate
                    {
                        OnClickChoiceButton(choice);
                    });
                }
            }
        }
        // If we've read all the content and there's no choices, the story is finished!
        else
        {
            Button choice = CreateChoiceView("End of story.\nRestart?", canvas);
            choice.onClick.AddListener(delegate
            {
                Start();
            });
        }
    }

    public IEnumerator StayRightThere(string time)
    {
        yield return new WaitForSeconds(float.Parse(time));
        story.ChooseChoiceIndex(0);
        RefreshView();
    }

    /*
    public IEnumerator Pause()
    {
        yield return new WaitUntil(() => Input.GetKeyDown("space"));
        pause = -1;
        Debug.Log(pause);
    }
    */


    // When we click the choice button, tell the story to choose that choice!
    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        RefreshView();
    }

    // Creates a textbox showing the line of text
    void CreateContentView(string text, string voice, Image backer)
    {
        TextMeshProUGUI x;
        x = textPrefab;

        //for varied fonts, delete the above line "x = textPrefab" and uncomment the next if else statement
        /*
        if (voice != "")
        {
            if (voice == "chat")
            {
                x = chatPrefab;
            }
            else if (voice == "sfx")
            {
                x = sfxPrefab;
            }
            else
            {
                x = loudPrefab;
            }
        }
        else
        {
            x = textPrefab;
        }
        */

        if (voice != "")
        {
            if (voice == "kasey")
            {
                backer.color = kaseyColor;
            }
            else if (voice == "sarah")
            {
                backer.color = sarahColor;
            }
        }
        else
        {
            backer.color = beastColor;
        }


        // Creates paragraph from the TextMesh prefab and sets parent to the panel prefab instance
        TextMeshProUGUI storyText = Instantiate(x) as TextMeshProUGUI;
        storyText.text = text;
        storyText.transform.SetParent(backer.transform, false);
    }

    // Creates a button showing the choice text
    Button CreateChoiceView(string text, Canvas uiSpace)
    {
        // Creates the button from a prefab and sets parent to the panel prefab instance
        Button choice = Instantiate(buttonPrefab) as Button;
        choice.transform.SetParent(uiSpace.transform, false);

        // Gets the text from the button prefab
        TextMeshProUGUI choiceText = choice.GetComponentInChildren<TextMeshProUGUI>();
        choiceText.text = text;

        //Debug.Log(text);

        return choice;
    }

    // Destroys all the children of this gameobject (all the UI)
    void RemoveChildren()
    {
        int childCount = canvas.transform.childCount;
        for (int i = childCount - 1; i >= 0; --i)
        {
            GameObject.Destroy(canvas.transform.GetChild(i).gameObject);
        }
    }

    [SerializeField]
    private TextAsset inkJSONAsset;
    public Story story;

    [SerializeField]
    private Canvas canvas;

    // UI Prefabs
    [SerializeField]
    private TextMeshProUGUI textPrefab;
    /*
    [SerializeField]
    private TextMeshProUGUI chatPrefab;
    [SerializeField]
    private TextMeshProUGUI sfxPrefab;
    [SerializeField]
    private TextMeshProUGUI loudPrefab;
    */

    [SerializeField]
    private Button buttonPrefab;
    [SerializeField]
    private Image panelPrefab;

    // Sprites
    [SerializeField]
    private GameObject background;
    //location list is: carNight, carDay, lhTop, lhMid, lhGround, entry, hall, hallwindow, stairs, light
    [SerializeField]
    private Sprite carNightSprite;
    [SerializeField]
    private Sprite carDaySprite;
    [SerializeField]
    private Sprite lhTopSprite;
    [SerializeField]
    private Sprite lhMidSprite;
    [SerializeField]
    private Sprite lhGroundSprite;
    //[SerializeField]
    //private Sprite entrySprite;
    [SerializeField]
    private Sprite hallSprite;
    [SerializeField]
    private Sprite hallWindowSprite;
    [SerializeField]
    private Sprite stairsSprite;
    [SerializeField]
    private Sprite lightSprite;
    [SerializeField]
    private GameObject characterPrefab;

    //Colors for speech bubbles
    [SerializeField]
    private Color kaseyColor;
    [SerializeField]
    private Color sarahColor;
    [SerializeField]
    private Color beastColor;


    // Placement empties
    [SerializeField]
    private GameObject standBack;
    [SerializeField]
    private GameObject speaking;

    // All character sprites
    [SerializeField]
    private Sprite dracula;
    [SerializeField]
    private Sprite owen;
}