MyPodcast is a simple prototype application that gives a user a podcasts player, with different features such as: 
- search for podcasts
- browse within a selection of podcasts
- listen to podcasts (play, stop and resume later at the same moment)
- add to favorites, share.... 

Technical:
- Implement the API from ListenNotes https://www.listennotes.com/api/  (while waiting to get an API key after registering, will use their mock test API https://www.listennotes.help/article/48-how-to-test-the-podcast-api-without-an-api-key ). 
- Abstarct the API layer so we can switch to another API provider (spotify....)
- Unit tests
- UI tests (coming later)
- Deeplinks
- Data persistency (for favorites, play time...) coming later

Design: 

![alt text](https://github.com/dzk34/MyPodcast/blob/master/MyPodcast-Diagram.jpeg?raw=true)


Architecture diagram:
![alt text](https://github.com/dzk34/MyPodcast/blob/develop/architecture-diagram.jpg)
