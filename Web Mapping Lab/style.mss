Map {
  background-color: #b1d4ff;

}

#bystation {
  [zoom < 10] {
  marker-width:5;
  marker-fill:#00DA3C;
  marker-line-color:#B8FD99;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  }
  [zoom >= 10] {
  marker-width:6;
  marker-fill:#00DA3C;
  marker-line-color:#B8FD99;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  }
}

#bystation {
  [zoom >= 10]{
    [freq >= 0] { marker-width: 2 }
    [freq >= 500] { marker-width: 3}
    [freq >= 1500] { marker-width: 5}
    [freq >= 2500] { marker-width: 8}
    [freq >= 3500] { marker-width: 10}
    [freq >= 4500] { marker-width: 14}
    [freq >= 5500] { marker-width: 16}
    }
  [zoom = 11] {
    [freq = 0]{ marker-width:.5;}
    [freq = 1]{ marker-width:1;}
    [freq = 2]{ marker-width:2;}
    [freq = 3]{ marker-width:4;}
    [freq = 4]{ marker-width:6;}
    [freq = 5]{ marker-width:8;}
   }
  [zoom = 12] {
    [freq = 0]{ marker-width:0.8;}
    [freq = 1]{ marker-width:1.5;}
    [freq = 2]{ marker-width:3;}
    [freq = 3]{ marker-width:5;}
    [freq = 4]{ marker-width:7;}
    [freq = 5]{ marker-width:9;}
   }
  [zoom = 13] {
    [freq = 0]{ marker-width:5;}
    [freq = 1]{ marker-width:10;}
    [freq = 2]{ marker-width:20;}
    [freq = 3]{ marker-width:30;}
    [freq = 4]{ marker-width:40;}
    [freq = 5]{ marker-width:50;}
   }
  [zoom = 14] {
    [freq = 0]{ marker-width:10;}
    [freq = 1]{ marker-width:20;}
    [freq = 2]{ marker-width:30;}
    [freq = 3]{ marker-width:40;}
    [freq = 4]{ marker-width:50;}
    [freq = 5]{ marker-width:60;}
   }
}


#neighborhood {
  line-color:#e9e5dc;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#e9e5dc;
}

#neighborhood {
  [zoom < 12] {
    polygon-opacity: 1;
    line-opacity:0;
  }
  [NBHOOD = "water"] {polygon-opacity: 0}
  [NBHOOD = "water"] {line-opacity: 0}
  
}

#seattlenetwork {
  [zoom < 13] {
    polygon-opacity: 0;
    line-opacity:0;
    }
  line-color:#e9e5dc;
  line-width:2;
  polygon-opacity:0;
  polygon-fill:#e9e5dc;
}

#us {
  line-color:#666666;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#e9e5dc;
  

}


#uscounties {
  line-color:#666666;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#e9e5dc;
  comp-op:overlay;
}


#washingtonlake {
  line-opacity:0;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#b1d4ff;
  
}


#lakeunion {
  line-opacity: 0;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#b1d4ff;
  
}


#neigh {
  [zoom >=11] {
   line-color:#95a5a6;
   line-width:0.5;
   polygon-opacity:1;
   polygon-fill:#e9e5dc;
  }
}



#distr {
  [zoom >= 12] {
   line-color:#e9e5dc;
   line-width:1;
   line-dasharray: 9,8;
   polygon-opacity:0.1;
   polygon-fill:#e9e5dc;
   }
  [zoom > 13] {
   line-color:#e9e5dc;
   line-width:3;
   line-dasharray: 9,8;
   polygon-opacity:0.1;
   polygon-fill:#e9e5dc;
   line-opacity:0.8;
   }
  [zoom >=14] {
    text-name: [name];
    text-face-name: 'Adobe Arabic Bold';
    text-fill: #34495e;
    text-size: 20;
    text-halo-fill: fadeout(white, 30%);
    text-halo-radius: 1.5;
  }
}



#bikelane {
  [zoom >=12] {
  line-width:0.6;
  line-color:#F8CA00;
  
    }
}


#building {
  [zoom >14] {
   line-width:0;
   line-color:#a9a9a9;
   polygon-fill:#a9a9a9;
   polygon-opacity:0.5;
  }
}



#rightofway {
  [zoom >11] {
  line-color:#e2e2e0;
  line-width:1;
  polygon-opacity:1;
  polygon-fill:#ffffff;
    }
}


#park {
  [zoom >= 12] {
  line-color:#594;
  line-width:0;
  polygon-opacity:0.8;
  polygon-fill:#cae0a8;
    }
}


#landuse {
  line-color:#594;
  line-width:0;
  [PRES_USE_D = 'Office Building'] 
    {polygon-fill:#FF6B6B;
    polygon-opacity: 0.5;
  }

}
