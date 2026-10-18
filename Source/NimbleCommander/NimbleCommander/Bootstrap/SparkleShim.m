// Copyright (C) 2020-2023 Michael Kazakov. Subject to GNU General Public License version 3.
#import <Foundation/Foundation.h>
#include "SparkleShim.h"

// The updater/upgrade module is disabled in this build: no updater controller is ever created,
// hence Sparkle performs neither scheduled nor manual update checks.
SPUStandardUpdaterController *NCBootstrapSharedSUUpdaterInstance(void)
{
    return nil;
}

SEL NCBootstrapSUUpdaterAction(void)
{
    return @selector(checkForUpdates:);
}
