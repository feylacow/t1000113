.class public Lnet/aihelp/core/util/bus/util/ErrorDialogFragments;
.super Ljava/lang/Object;
.source "ErrorDialogFragments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Support;,
        Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Honeycomb;
    }
.end annotation


# static fields
.field public static ERROR_DIALOG_ICON:I

.field public static EVENT_TYPE_ON_CLICK:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "de.greenrobot.eventbus.errordialog.title"

    .line 43
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p0, "de.greenrobot.eventbus.errordialog.message"

    .line 44
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    sget p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments;->ERROR_DIALOG_ICON:I

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    const p0, 0x104000a

    .line 48
    invoke-virtual {v0, p0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static handleOnClick(Landroid/content/DialogInterface;ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    sget-object p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments;->EVENT_TYPE_ON_CLICK:Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    sget-object p1, Lnet/aihelp/core/util/bus/util/ErrorDialogManager;->factory:Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->getEventBus()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Event cannot be constructed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    const-string p1, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    .line 63
    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
