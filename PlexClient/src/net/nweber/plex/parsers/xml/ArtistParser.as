package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IArtistParser;
	import net.nweber.plex.valueObjects.Artist;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class ArtistParser implements IArtistParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		/*
		<Directory ratingKey="5230" key="/library/metadata/5230/children" type="artist" title="The Hoosiers" titleSort="Hoosiers" summary="The Hoosiers are a pop/rock band from Reading, Exeter and Sweden. The band members are Irwin Sparkes (vocals, guitar), Martin Skarendahl (bass and backing vocals) and Alphonso Sharland (drums). Their most well-known singles are Worried About Ray and Goodbye Mr A. “Worried About Ray” reached #16 on the UK Singles Chart dated 24 June 2007 on downloads alone. The single has climbed to #5 with CD sales included. Their second single Goodbye Mr A entered the charts at #5, and  climbed another place to #4.&#xA;&#xA;The trio are signed to RCA and their debut album titled ‘The Trick To Life’ was released  22nd October 2007. The band have spoken of their desire to write songs that are about “more than just boy meets girl after a night on the lash”, and said that the album would surprise people who only know their singles.&#xA;&#xA;Their second album &apos;The Illusion of Safety&apos; was released 16th August 2010 and its first single &apos;Choices&apos; reached #11 on the UK Download Charts immediately. Second single from that album will be &apos;Unlikely Hero&apos; and it&apos;ll be released soon.&#xA;&#xA;The re-release of &apos;The Illusion Of Safety&apos;, now going under the name of &apos;Bumpy Ride&apos; will be out March 19th 2011(please confirm) and will include more new songs. First single from this new album also titled &apos;Bumpy Ride&apos; will be released March 4th 2011(please confirm) .&#xA;&#xA;The band are now signed to Angelic Union after leaving RCA in early 2011.&#xA;   &#xA;User-contributed text is available under the Creative Commons By-SA License and may also be available under the GNU FDL." index="1" thumb="/library/metadata/5230/thumb?t=1344380706" art="/library/metadata/5230/art?t=1344380706" addedAt="1344380473" updatedAt="1344380706">
			<Genre tag="Indie" />
			<Genre tag="Indie rock" />
		</Directory>
		*/
			
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			var node:XMLList;
			
			var a:Artist = new Artist();
			
			a.ratingKey = data.@ratingKey;
			a.key = data.@key;
			a.title = data.@title;
			a.titleSort = data.@titleSort;
			a.summary = data.@summary;
			a.index = data.@index;
			a.thumb = data.@thumb;
			a.art = data.@art;
				
			a.genres = new Vector.<String>();
			list = data..Genre;
			for each (x in list) {
				a.genres.push(x.@tag);
			}
			
			return a;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function ArtistParser() {
			
		}
	}
}