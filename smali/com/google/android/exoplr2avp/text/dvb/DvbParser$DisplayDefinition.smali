.class final Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayDefinition"
.end annotation


# instance fields
.field public final height:I

.field public final horizontalPositionMaximum:I

.field public final horizontalPositionMinimum:I

.field public final verticalPositionMaximum:I

.field public final verticalPositionMinimum:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput p1, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->width:I

    .line 964
    iput p2, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->height:I

    .line 965
    iput p3, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    .line 966
    iput p4, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 967
    iput p5, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    .line 968
    iput p6, p0, Lcom/google/android/exoplr2avp/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    return-void
.end method
