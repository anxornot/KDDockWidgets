/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

#pragma once

// Pimpl class so we can keep kdbindings private

#include "Group.h"
#include "ObjectGuard_p.h"
#include "core/Controller_p.h"
#include "core/layouting/LayoutingGuest_p.h"
#include "core/View_p.h"

#include <kdbindings/signal.h>

#include <unordered_map>
#include <vector>

namespace KDDockWidgets {

namespace Core {

class Group::Private : public LayoutingGuest
{
public:
    explicit Private(Group *qq, int userType, FrameOptions options);
    ~Private() override;

    ObjectGuard<Core::Item> m_layoutItem;

    KDBindings::Signal<> numDockWidgetsChanged;
    KDBindings::Signal<> hasTabsVisibleChanged;
    KDBindings::Signal<> isInMainWindowChanged;
    KDBindings::Signal<> isFocusedChanged;
    KDBindings::Signal<> focusedWidgetChanged;
    KDBindings::Signal<> actualTitleBarChanged;
    KDBindings::Signal<> isMDIChanged;

    KDBindings::ScopedConnection m_visibleWidgetCountChangedConnection;
    KDBindings::ScopedConnection m_parentViewChangedConnection;

    std::unordered_map<Core::DockWidget *, KDBindings::ScopedConnection>
        titleChangedConnections;

    std::unordered_map<Core::DockWidget *, KDBindings::ScopedConnection>
        iconChangedConnections;

    ///@brief sets the layout item that either contains this Group in the layout or is a placeholder
    void setLayoutItem(Core::Item *item) override;
    LayoutingHost *host() const override;
    void setHost(LayoutingHost *) override;

    Size minSize() const override
    {
        return q->view()->minSize();
    }

    Size maxSizeHint() const override
    {
        return q->view()->maxSizeHint();
    }

    void setGeometry(Rect r) override
    {
        q->view()->setGeometry(r);
    }

    void setVisible(bool is) const override
    {
        q->view()->setVisible(is);
    }

    Rect geometry() const override
    {
        return q->view()->geometry();
    }

    QString debugName() const override
    {
        return q->view()->viewName();
    }

    QString id() const override
    {
        return q->view()->d->id();
    }

    bool freed() const override
    {
        return q->view()->d->freed();
    }

#ifdef DOCKS_DEVELOPER_MODE
    void setMinimumSize(Size sz) override
    {
        return q->view()->setMinimumSize(sz);
    }

    void setMaximumSize(Size sz) override
    {
        return q->view()->setMaximumSize(sz);
    }

    Size size() const override
    {
        return q->view()->size();
    }
#endif

    Group *const q;
    int m_userType = 0;
    FrameOptions m_options = FrameOption_None;
};

}

}
