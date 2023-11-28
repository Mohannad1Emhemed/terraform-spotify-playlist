# --- Terraform-spotify-list/main.tf ---

data "spotify_search_track" "by_artist" {
  artist =  "David Guetta"

  #  album = ""
  #  name  = ""
}

data "spotify_search_track" "by_artist1" {
  artist =  "Maroon 5"


}

data "spotify_search_track" "by_artist2" {
  artist =  "Calvin Harris"


}

data "spotify_search_track" "by_artist3" {
  artist =  "Willy William"


}

resource "spotify_playlist" "playlist" {
  name        = "Mohannad Summer Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_search_track.by_artist.tracks[2].id,
    data.spotify_search_track.by_artist.tracks[3].id,
    data.spotify_search_track.by_artist.tracks[4].id,
    data.spotify_search_track.by_artist.tracks[6].id,
    data.spotify_search_track.by_artist.tracks[7].id,
    data.spotify_search_track.by_artist.tracks[8].id,
    data.spotify_search_track.by_artist.tracks[9].id,
    data.spotify_search_track.by_artist1.tracks[0].id,
    data.spotify_search_track.by_artist1.tracks[1].id,
    data.spotify_search_track.by_artist1.tracks[2].id,
    data.spotify_search_track.by_artist1.tracks[3].id,
    data.spotify_search_track.by_artist1.tracks[4].id,
    data.spotify_search_track.by_artist1.tracks[6].id,
    data.spotify_search_track.by_artist1.tracks[7].id,
    data.spotify_search_track.by_artist1.tracks[8].id,
    data.spotify_search_track.by_artist1.tracks[9].id,
    data.spotify_search_track.by_artist2.tracks[0].id,
    data.spotify_search_track.by_artist2.tracks[1].id,
    data.spotify_search_track.by_artist2.tracks[2].id,
    data.spotify_search_track.by_artist2.tracks[3].id,
    data.spotify_search_track.by_artist2.tracks[4].id,
    data.spotify_search_track.by_artist2.tracks[6].id,
    data.spotify_search_track.by_artist2.tracks[7].id,
    data.spotify_search_track.by_artist2.tracks[8].id,
    data.spotify_search_track.by_artist2.tracks[9].id,
    data.spotify_search_track.by_artist3.tracks[0].id,
    data.spotify_search_track.by_artist3.tracks[1].id,
    data.spotify_search_track.by_artist3.tracks[2].id,
    data.spotify_search_track.by_artist3.tracks[3].id,
    data.spotify_search_track.by_artist3.tracks[4].id,
    data.spotify_search_track.by_artist3.tracks[6].id,
    data.spotify_search_track.by_artist3.tracks[7].id,
    data.spotify_search_track.by_artist3.tracks[8].id,
    data.spotify_search_track.by_artist3.tracks[9].id,
  ]
}



/*
# Optional: Find song by ID
data "spotify_track" "early_morning_breeze_by_id" {
  spotify_id = "3CkJeQjxbYJsLN2MLAvluL"
}
# Optional: Find song by URL
data "spotify_track" "early_morning_breeze_by_url" {
  url = "https://open.spotify.com/track/3CkJeQjxbYJsLN2MLAvluL?si=753e257f39ac4b45"
}
*/