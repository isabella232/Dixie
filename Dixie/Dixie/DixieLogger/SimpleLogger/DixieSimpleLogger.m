//
// Dixie
// Copyright 2015 Skyscanner Limited
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at:
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and limitations under the License.

#include "DixieSimpleLogger.h"

@implementation DixieSimpleLogger

- (void)log:(NSString*)format,...
{
    va_list argumentList;
    va_start(argumentList, format);
    NSMutableString * message = [[NSMutableString alloc] initWithFormat:format arguments:argumentList];
    
    NSMutableString * res = [[NSMutableString alloc] initWithString:@"Dixie "];
    [res appendString:message];
    
    NSLog(res, nil);
    va_end(argumentList);
}

@end