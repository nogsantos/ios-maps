//
//  ViewController.h
//  MinhaLocalizacao
//
//  Created by Fabricio Nogueira dos Santos on 9/17/15.
//  Copyright © 2015 Fabricio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapa;

@end

