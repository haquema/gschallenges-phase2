class MusicTracks
  def initialize
    @playlist = []
  end

  def add_track(track)
    fail "cannot add an empty string to tracklist" if track.empty?
    @playlist << track
  end

  def display_tracks
    @playlist.join(", ")
  end

end
