//
//  AFHTTPRequestOperation+NF.h
//  Bandstalk
//
//  Created by Ben Fox on 1/7/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import "AFHTTPRequestOperation.h"

@interface AFHTTPRequestOperation (NF)

+ (AFHTTPRequestOperation *)imageRequestOperationWithRequest:(NSURLRequest *)request completion:(void (^)(UIImage *image))completion;

+ (AFHTTPRequestOperation *)imageWithURL:(NSURL *)url completion:(void (^)(UIImage *image))completion;
+ (AFHTTPRequestOperation *)imageWithURL:(NSURL *)url processing:(UIImage *(^)(UIImage *image))processing completion:(void (^)(UIImage *image))completion;

@end
