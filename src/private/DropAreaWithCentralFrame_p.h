/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019-2022 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

#ifndef KD_DROP_AREA_WITH_CENTRAL_FRAME_P_H
#define KD_DROP_AREA_WITH_CENTRAL_FRAME_P_H

#include "DropArea_p.h"

namespace KDDockWidgets {

class DOCKS_EXPORT DropAreaWithCentralFrame : public DropArea
{
    Q_OBJECT
public:
    explicit DropAreaWithCentralFrame(QWidgetOrQuick *parent = {}, MainWindowOptions options = MainWindowOption_HasCentralFrame);
    ~DropAreaWithCentralFrame();

    static Controllers::Frame *createCentralFrame(MainWindowOptions options);

private:
    friend class Controllers::MainWindow;
    friend class Controllers::Frame;
    Controllers::Frame *const m_centralFrame = nullptr;
};

}

#endif
