module SongsHelper
  
  def artist_select(song)
    if song.artist.nil?
      f.select :author_id, options_from_collection_for_select(Author.all, :id, :name)
    else
      f.hidden_field :artist_id
    end
  end 
  
end
