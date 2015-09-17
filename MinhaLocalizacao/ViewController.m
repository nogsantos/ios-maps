//
//  ViewController.m
//  MinhaLocalizacao
//
//  Created by Fabricio Nogueira dos Santos on 9/17/15.
//  Copyright © 2015 Fabricio Nogueira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     * Define a própria classe viewController como tendo os métodos
     do delegate do mapkit
     */
    self.mapa.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) mapView:(MKMapView *)mapView didAddAnnotationViews:(nonnull NSArray<MKAnnotationView *> *)views{
    
    MKAnnotationView *v = [views objectAtIndex:0];
    CLLocationDistance distancia = 400;
    MKCoordinateRegion regiao = MKCoordinateRegionMakeWithDistance([v.annotation coordinate], distancia, distancia);
    [self.mapa setRegion:regiao animated:YES];
    
}

@end
