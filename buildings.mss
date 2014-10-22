@building-fill: #dcd5c6;
@building-line: darken(@building-fill, 10%);

@building-major-fill: darken(@building-fill, 20%);
@building-major-line: darken(@building-major-fill, 25%);

@building-aeroway-fill: #cc99ff;
@building-aeroway-line: darken(@building-aeroway-fill,15%);


#buildings {
  [zoom >= 12] {
    polygon-fill: @building-fill;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      line-width: .75;
      line-clip: false;
    }
  }
}

#buildings-major {
  [zoom >= 12] {
    [aeroway = 'terminal'] {
      polygon-fill: @building-aeroway-fill;
      polygon-clip: false;
      [zoom >= 15] {
        line-width: .75;
        line-clip: false;
        line-color: @building-aeroway-line;
      }
    }
    [amenity = 'place_of_worship'] {
      polygon-fill: @building-major-fill;
      polygon-clip: false;
      [zoom >= 15] {
        line-width: .75;
        line-clip: false;
        line-color: @building-major-line;
      }
    }
  }
}
