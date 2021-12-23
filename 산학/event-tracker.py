    import boto3
    import json
    import time
    import datetime

    personalize_events = boto3.client('personalize-events')

    data = personalize_events.put_events(
        trackingId = 'a7aaccc0-bdb3-4863-92a0-a58b1739afc2',  
        userId = '1146992',  
        sessionId = 'session_id',
        eventList = [{
            'sentAt': datetime.datetime.now().timestamp(),  
            'eventType': 'Rating',  
            'properties': json.dumps({
                'itemId': '5000',  
                'eventValue': float('4')  
            })
        }]
    )


