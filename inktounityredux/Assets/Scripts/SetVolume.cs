using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class SetVolume : MonoBehaviour
{
    public Sound[] sounds;
    public AudioMixer mixer;
    public Slider sliderMaster;
    public Slider sliderMusic;
    public Slider sliderSfx;

    public AudioMixerGroup master;
    public AudioMixerGroup music;
    public AudioMixerGroup sfx;

    public static SetVolume instance;

    private void Awake()
    {
        if(instance == null)
        {
            instance = this;
        } else
        {
            Destroy(gameObject);
            return;
        }

        DontDestroyOnLoad(gameObject);

        foreach(Sound s in sounds)
        {
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;

            if (s.sfx == false)
            {
                s.source.outputAudioMixerGroup = music;
            }
            else
            {
                s.source.outputAudioMixerGroup = sfx;
            }

            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;

        }
    }

    public void Play(string name)
    {
        //need to use System for this (as assigned at the start of this document)
        //finding in the array "sounds" the sound where the sound's name is equal to the passed in name string, then storing it in a Sound variable s
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound: " + name + " not found!");
            return;
        }
        s.source.Play();
    }

    void Start()
    {
        sliderMaster.value = PlayerPrefs.GetFloat("MasterVolume", 0.75f);
        sliderMusic.value = PlayerPrefs.GetFloat("MusicVolume", 0.75f); 
        sliderSfx.value = PlayerPrefs.GetFloat("SfxVolume", 0.75f);
        Play("WheeDeeLoop");
    }
    public void SetLevelMaster(float sliderValueMaster)
    {
        //float sliderValueMaster = sliderMaster.value;
        mixer.SetFloat("MasterVol", Mathf.Log10(sliderValueMaster) * 20);
        PlayerPrefs.SetFloat("MasterVolume", sliderValueMaster);
        
        
        /*
        //float sliderValue = sliderMusic.value;
        mixer.SetFloat("MusicVol", Mathf.Log10(sliderValue) * 20);
        PlayerPrefs.SetFloat("MusicVolume", sliderValue);
        */

        /*
        float sliderValueSfx = sliderMusic.value;
        mixer.SetFloat("SfxVol", Mathf.Log10(sliderValueSfx) * 20);
        PlayerPrefs.SetFloat("SfxVolume", sliderValueSfx);
        */
    }

    public void SetLevelMusic(float sliderValueMusic)
    {
        /*
        float sliderValueMaster = sliderMaster.value;
        mixer.SetFloat("MasterVol", Mathf.Log10(sliderValueMaster) * 20);
        PlayerPrefs.SetFloat("MasterVolume", sliderValueMaster);
        */

        //float sliderValue = sliderMusic.value;
        mixer.SetFloat("MusicVol", Mathf.Log10(sliderValueMusic) * 20);
        PlayerPrefs.SetFloat("MusicVolume", sliderValueMusic);

        /*
        float sliderValueSfx = sliderMusic.value;
        mixer.SetFloat("SfxVol", Mathf.Log10(sliderValueSfx) * 20);
        PlayerPrefs.SetFloat("SfxVolume", sliderValueSfx);
        */
    }

    public void SetLevelSfx(float sliderValueSfx)
    {
        /*
        float sliderValueMaster = sliderMaster.value;
        mixer.SetFloat("MasterVol", Mathf.Log10(sliderValueMaster) * 20);
        PlayerPrefs.SetFloat("MasterVolume", sliderValueMaster);
        */

        /*
        //float sliderValue = sliderMusic.value;
        mixer.SetFloat("MusicVol", Mathf.Log10(sliderValue) * 20);
        PlayerPrefs.SetFloat("MusicVolume", sliderValue);
        */
        
        //float sliderValueSfx = sliderMusic.value;
        mixer.SetFloat("SfxVol", Mathf.Log10(sliderValueSfx) * 20);
        PlayerPrefs.SetFloat("SfxVolume", sliderValueSfx);
        
    }
}