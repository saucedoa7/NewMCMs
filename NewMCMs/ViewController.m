//
//  ViewController.m
//  NewMCMs
//
//  Created by Albert Saucedo on 11/21/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import "Pokemon.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *pokemons;
@property (strong, nonatomic) IBOutlet UITableView *pokemonTableView;
@property (strong, nonatomic) IBOutlet UITextField *txtPokemon;
@property (strong, nonatomic) IBOutlet UITextField *txtStage;
@property (strong, nonatomic) IBOutlet UITextField *txtLevel;

@end

@implementation ViewController
- (IBAction)onAddButtonPressed:(UIButton *)sender {
    Pokemon *pokemon = [[Pokemon alloc] initWithName:self.txtPokemon.text
                                               stage:[self.txtStage.text intValue]
                                               level:[self.txtLevel.text intValue]];
    [self.pokemons addObject:pokemon];
    [self.pokemonTableView reloadData];

    self.txtPokemon.text = @"";
    self.txtStage.text = @"";
    self.txtLevel.text = @"";

    for (Pokemon *poke in self.pokemons) {
        NSLog(@"%@, %d, %d",poke.name, poke.stage, poke.level);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Pokemon *charmander = [[Pokemon alloc]initWithName:@"Charmander"
                                                 stage:1
                                                 level:5];

    Pokemon *charmeleon = [[Pokemon alloc]initWithName:@"Charmeleon"
                                                 stage:2
                                                 level:16];

    Pokemon *charazard = [[Pokemon alloc]initWithName:@"Charazard"
                                                stage:3
                                                level:32];

    self.pokemons = [[NSMutableArray alloc]initWithObjects:charmander, charmeleon, charazard, nil];
    

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Pokemon *pokemon = [self.pokemons objectAtIndex:indexPath.row];

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCellID"];
    cell.textLabel.text = pokemon.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Level: %d", pokemon.level];
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.pokemons.count;
}


@end
