package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.parsers.IMovieParser;
	import net.nweber.plex.valueObjects.Media;
	import net.nweber.plex.valueObjects.Movie;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MovieParser implements IMovieParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var mediaParser:IMediaParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Video ratingKey="1877" key="/library/metadata/1877" studio="Fox Searchlight Pictures" type="movie" title="(500) Days of Summer" contentRating="PG-13" summary="(500) Days of Summer is a 2009 American comedy drama film. It was written by Scott Neustadter and Michael H. Weber, directed by Marc Webb, produced by Mark Waters, and stars Joseph Gordon-Levitt and Zooey Deschanel. The film employs a nonlinear narrative structure, with the story based upon its male protagonist and his memory-driven look at a failed relationship. Principal photography began in April 2008 in Los Angeles, California.&#xA;&#xA;As an independent production, it was picked up for distribution by Fox Searchlight Pictures and premiered at the 2009 Sundance Film Festival. It was a hit with audiences and received a standing ovation at the festival. It later went on wide release in the US on August 7, 2009, on September 2, 2009, in the UK and Ireland, and on September 17, 2009, in Australia.&#xA;&#xA;The film went on to achieve widespread success. It garnered critical acclaim and became a successful &quot;sleeper hit&quot;, earning over $60 million in worldwide returns, far exceeding its $7.5 million budget. Many critics lauded the film as one of the best from 2009, seeing it featured in many year end lists and drawing comparisons to other acclaimed films such as Annie Hall and High Fidelity.&#xA;&#xA;The film also received numerous awards and nominations; including Scott Neustadter and Michael H. Weber receiving the 2009 Satellite Award for Best Original Screenplay and the Independent Spirit Award for Best Screenplay. Notable nominations included two at the 67th Golden Globe Awards for Best Picture (Musical or Comedy), which it lost to The Hangover, and a nomination for Joseph Gordon-Levitt for Best Actor (Musical or Comedy), who lost to Robert Downey, Jr. for Sherlock Holmes." rating="7.9" viewCount="2" year="2009" tagline="Boy meets girl.  Boy falls in love.  Girl doesn't." thumb="/library/metadata/1877/thumb?t=1345328567" art="/library/metadata/1877/art?t=1345328567" duration="5700000" originallyAvailableAt="2009-07-17" addedAt="1343968682" updatedAt="1345328567">
			<Media id="1712" duration="5704532" bitrate="13156" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
			  <Part key="/library/parts/2025/file.mkv" duration="5704532" file="\\GIMMICKY-SERVER\Videos\Movies\(500) Days Of Summer.mkv" size="9381296804" container="mkv"/>
			</Media>
			<Genre tag="Comedy-drama"/>
			<Genre tag="Comedy"/>
			<Writer tag="Scott Neustadter"/>
			<Writer tag="Michael H. Weber"/>
			<Director tag="Marc Webb"/>
			<Country tag="USA"/>
			<Role tag="Zooey Deschanel"/>
			<Role tag="Joseph Gordon-Levitt"/>
			<Role tag="Rachel Boston"/>
		</Video>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			var node:XMLList;
			
			var m:Movie = new Movie();
			
			m.key = data.@key;
			m.title = data.@title;
			m.summary = data.@summary;
			m.tagline = data.@tagline;
			m.duration = data.@duration;
			m.studio = data.@studio;
			m.year = data.@year;
			m.contentRating = data.@contentRating;
			m.rating = data.@rating;
			m.ratingKey = data.@ratingKey;
			m.thumb = data.@thumb;
			m.art = data.@art;
			
			m.medias = new Vector.<Media>();
			var media:Media;
			list = data..Media;
			for each (x in list) {
				media = mediaParser.parse(x);
				if (media)
					m.medias.push(media);
			}
			
			m.genres = new Vector.<String>();
			list = data..Genre;
			for each (x in list) {
				m.genres.push(x.@tag);
			}
			
			m.writers = new Vector.<String>();
			list = data..Writer;
			for each (x in list) {
				m.writers.push(x.@tag);
			}
			
			node = data.Director;
			if (node.length() > 0)
				m.director = node[0].@tag;
			
			node = data.Country;
			if (node.length() > 0)
				m.country = node[0].@tag;
			
			m.roles = new Vector.<String>();
			list = data..Role;
			for each (x in list) {
				m.roles.push(x.@tag);
			}
			
			return m;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function MovieParser() {
			
		}
	}
}