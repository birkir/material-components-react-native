#import "RNMaterialComponentsCollection.h"
#import "MaterialTypography.h"


static const NSInteger kSectionCount = 10;
static const NSInteger kSectionItemCount = 5;
static NSString *const kReusableIdentifierItem = @"itemCellIdentifier";

#pragma mark - RNMaterialComponentsCollection

@implementation RNMaterialComponentsCollection {
    NSMutableArray <NSMutableArray *>*_content;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Register cell class.
    [self.collectionView registerClass:[MDCCollectionViewTextCell class] forCellWithReuseIdentifier:kReusableIdentifierItem];
    
    // Populate content.
    _content = [NSMutableArray array];
    for (NSInteger i = 0; i < kSectionCount; i++) {
        NSMutableArray *items = [NSMutableArray array];
        for (NSInteger j = 0; j < kSectionItemCount; j++) {
            NSString *itemString = [NSString stringWithFormat:@"Section-%zd Item-%zd", i, j];
            [items addObject:itemString];
        }
        [_content addObject:items];
    }
    
    // Customize collection view settings.
    self.styler.cellStyle = MDCCollectionViewCellStyleCard;
    
}

#pragma mark - <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [_content count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_content[section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MDCCollectionViewTextCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReusableIdentifierItem forIndexPath:indexPath];
    cell.textLabel.text = _content[indexPath.section][indexPath.item];
    return cell;
}

#pragma mark - <MDCCollectionViewEditingDelegate>
- (BOOL)collectionViewAllowsSwipeToDismissItem:(UICollectionView *)collectionView {
    return YES;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canSwipeToDismissItemAtIndexPath:(NSIndexPath *)indexPath {
    // In this example we are allowing all items to be dismissed.
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView willDeleteItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    // Remove these swiped index paths from our data.
    for (NSIndexPath *indexPath in indexPaths) {
        [_content[indexPath.section] removeObjectAtIndex:indexPath.item];
    }
}

@end
