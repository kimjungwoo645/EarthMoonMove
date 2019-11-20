using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Moon : MonoBehaviour
{
    [SerializeField] GameObject earth;
    public float speed;
    void Start()
    {
        
    }

    void Update()
    {
        gameObject.transform.Rotate(new Vector3(0,-0.5f,0),Space.Self);

        transform.RotateAround(earth.transform.position, Vector3.down, speed * Time.deltaTime);
    }
}
