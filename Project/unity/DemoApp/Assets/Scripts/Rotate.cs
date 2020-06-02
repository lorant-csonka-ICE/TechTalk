using System;
using UnityEngine;
using UnityEngine.EventSystems;

public class Rotate : MonoBehaviour, IEventSystemHandler
{
    [SerializeField]
    Vector3 RotateAmount;

    // Start is called before the first frame update
    void Start()
    {
        RotateAmount = new Vector3(0, 0, 0);
    }

    // Update is called once per frame
    //void Update()
    //{
    //    gameObject.transform.Rotate(RotateAmount * Time.deltaTime * 10);

    //    for (int i = 0; i < Input.touchCount; ++i)
    //    {
    //        if (Input.GetTouch(i).phase.Equals(TouchPhase.Began))
    //        {
    //            var hit = new RaycastHit();

    //            Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);

    //            if (Physics.Raycast(ray, out hit))
    //            {
    //                // This method is used to send data to Flutter
    //                UnityMessageManager.Instance.SendMessageToFlutter("The cube feels touched.");
    //            }
    //        }
    //    }
    //}

    public float speed = 10.0f;
    public float rotationSpeed = 100.0f;

    void Update()
    {
        // Get the horizontal and vertical axis.
        // By default they are mapped to the arrow keys.
        // The value is in the range -1 to 1
        float translation = /*Input.GetAxis("Vertical")*/ (float)YForce * speed;
        float rotation = /*Input.GetAxis("Horizontal")*/ (float)XForce * rotationSpeed;

        // Make it move 10 meters per second instead of 10 meters per frame...
        translation *= Time.deltaTime;
        rotation *= Time.deltaTime;

        // Move translation along the object's z-axis
        transform.Translate(0, 0, translation);

        // Rotate around our y-axis
        transform.Rotate(0, rotation, 0);

    }

    // This method is called from Flutter
    public void SetRotationSpeed(String message)
    {
        var input = message.Split(';');

        var degree = double.Parse(input[0], System.Globalization.CultureInfo.InvariantCulture)-90; 
        var force = double.Parse(input[1], System.Globalization.CultureInfo.InvariantCulture);

        XForce = Math.Cos(ToRadians(degree)) * force;
        YForce = Math.Sin(ToRadians(degree)) * force;

      /*  float value = float.Parse(message);
        RotateAmount = new Vector3(value, value, value);*/
    }

    double XForce;
    double YForce;

    public double ToRadians( double val)
    {
        return (Math.PI / 180) * val;
    }

}
