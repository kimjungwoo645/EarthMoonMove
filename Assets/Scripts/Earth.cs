using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Earth : MonoBehaviour
{
    void Start()
    {

    }
    void Update()
    {
        float val = Mathf.PingPong(Time.time * 0.25f, 1);
        GetComponent<Renderer>().material.SetFloat("_TexValue", val);

        this.transform.Rotate(new Vector3(0,-0.5f,0),Space.Self);
    }
}
