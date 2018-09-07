# Cert Prep Unity Scripting and Publishing

by Alan Thorn

[www.linkedin.com/learning/cert-prep-unity-scripting-and-publishing](https://www.linkedin.com/learning/cert-prep-unity-scripting-and-publishing) 

## Coroutines

Essentially a coroutine is a function that can run **asynchronously**, it runs in parallel.

```csharp
void Start()
{
    StartCoroutine(Move());
    print("Coroutine is now waiting");
    //StopCoroutine(Move());
    //StopAllCoroutines();
}

public IEnumerator Move()
{
    print ("Hello World");
    yield return new WaitForSeconds(2f); // pause this coroutine for 2s
    print ("After 2 seconds");
    yield break;
}
```
