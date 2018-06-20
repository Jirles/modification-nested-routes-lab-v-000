module SongsHelper

  def artist_select(song)
    if song.artist.nil?
      select_tag 'song[author_id]', options_from_collection_for_select(Author.all, :id, :name)
    else
      hidden_field_tag 'song[author_id]', @song.artist_id
    end
  end

end
