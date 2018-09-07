# CertPrep Unity User Interfaces & Animation
[www.linkedin.com/learning/cert-prep-unity-user-interfaces-and-animation](https://www.linkedin.com/learning/cert-prep-unity-user-interfaces-and-animation)

by Alan Thorn

## Blend Trees

Driving the blend trees

```csharp
void Awake()
{
    _thisAnimator = GetComponent<Animator>();
}

void Update()
{
    float horizontal = Input.GetAxis ("Horizontal");
    float vertical = Input.GetAxis ("Vertical");

    // 'Forwards' and 'Turn' are paremeters from the Blend Tree
    // We can also tweak the transitions using the dampTime and deltaTime parameters from the method SetFloat from above
    _thisAnimator.SetFloat("Forwards", vertical, 0.2f, Time.deltaTime);
    _thisAnimator.SetFloat("Turn", horizontal, 0.2f, Time.deltaTime);
}
```