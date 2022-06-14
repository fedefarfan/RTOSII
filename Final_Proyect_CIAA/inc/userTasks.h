/*=============================================================================
 * Copyright (c) 2022, Nahuel Figueroa <nahuu810@gmail.com>
 * All rights reserved.
 * License: mit (see LICENSE.txt)
 * Date: 2022/06/12
 *===========================================================================*/

/*=====[Avoid multiple inclusion - begin]====================================*/

#ifndef __USER_TASKS_H__
#define __USER_TASKS_H__

/*=====[Inclusions of public function dependencies]==========================*/

#include "FreeRTOS.h"
#include "task.h"
#include "sapi.h"

/*=====[Prototypes (declarations) of public functions]=======================*/

void myTask(void *taskParmPtr); // Task declaration

#endif /* __USER_TASKS_H__ */
