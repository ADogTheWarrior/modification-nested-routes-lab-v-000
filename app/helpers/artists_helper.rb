module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, f)
    if song.artist.nil?
      f.collection_select(:artist_id, Artist.all, :id, :name)
    else
      f.text_field :artist_name
    end
  end
end
