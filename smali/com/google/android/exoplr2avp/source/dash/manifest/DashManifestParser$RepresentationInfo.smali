.class public final Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationInfo"
.end annotation


# instance fields
.field public final baseUrls:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeType:Ljava/lang/String;

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lcom/google/android/exoplr2avp/Format;

.field public final inbandEventStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final revisionId:J

.field public final segmentBase:Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;J)V"
        }
    .end annotation

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2006
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplr2avp/Format;

    .line 2007
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 2008
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;

    .line 2009
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 2010
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 2011
    iput-object p6, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 2012
    iput-object p7, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    .line 2013
    iput-object p8, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    .line 2014
    iput-wide p9, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    return-void
.end method
