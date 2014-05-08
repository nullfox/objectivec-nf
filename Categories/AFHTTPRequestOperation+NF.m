//
//  AFHTTPRequestOperation+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 1/7/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import "AFHTTPRequestOperation+NF.h"

@implementation AFHTTPRequestOperation (NF)

+ (AFHTTPRequestOperation *)imageRequestOperationWithRequest:(NSURLRequest *)request completion:(void (^)(UIImage *))completion
{
    AFHTTPRequestOperation *operation = [[self alloc] initWithRequest:request];
    operation.responseSerializer = [AFImageResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        completion(nil);
    }];
    
    return operation;
}

+ (AFHTTPRequestOperation *)imageWithURL:(NSURL *)url completion:(void (^)(UIImage *))completion
{
    AFHTTPRequestOperation *operation = [self imageRequestOperationWithRequest:[NSURLRequest requestWithURL:url] completion:completion];
    [operation start];
    
    return operation;
}

+ (AFHTTPRequestOperation *)imageWithURL:(NSURL *)url processing:(UIImage *(^)(UIImage *))processing completion:(void (^)(UIImage *))completion
{
    AFHTTPRequestOperation *operation = [self imageWithURL:url completion:^(UIImage *image) {
        completion(processing(image));
    }];
    
    return operation;
}

@end
