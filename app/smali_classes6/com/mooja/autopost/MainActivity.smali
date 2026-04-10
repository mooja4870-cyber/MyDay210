.class public Lcom/mooja/autopost/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 10
    const-class v0, Lcom/mooja/autopost/SecurePrefsPlugin;

    invoke-virtual {p0, v0}, Lcom/mooja/autopost/MainActivity;->registerPlugin(Ljava/lang/Class;)V

    .line 11
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method
