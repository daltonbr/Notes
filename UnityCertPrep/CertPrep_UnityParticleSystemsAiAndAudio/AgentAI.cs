using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// A simple NavMeshAgent use for Unity
/// </summary>
public class AgentAI : MonoBehaviour
{
    private NavMeshAgent _thisAgent = null;
    private Transform _playerTransform = null;

    void Start()
    {
        // References
        GameObject playerObject = GameObject.FindGameObjectWithTag("Player");
        _playerTransform = playerObject.GetComponent<Transform>();
        _thisAgent = GetComponent<NavMeshAgent>();
    }

    void Update()
    {
        _thisAgent.SetDestination(_playerTransform.position);
    }
}